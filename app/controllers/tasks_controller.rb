#encoding: UTF-8

require 'take_office/employee'
require 'dvcore/security'

class TasksController < ApplicationController

  def new
    @task = Task.new.init(current_user)
    @employee = current_employee
    @quick_performers = current_user.quick_performer_employees
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: { task: @task } }
    end
  end

  def create
    performers = []
    performers = params[:performer].map { |x| TakeOffice::Employee.where(RowID: x).first }.select { |x| !x.nil? } unless 
      params[:performer].nil? || params[:performer].blank?
    error ||= 'Исполнитель не задан' if performers.blank?
    content = params[:content]
    error ||= 'Не задано содержание поручения' if content.blank?
    begin
      deadline = Time.strptime(params[:deadline], "%d.%m.%Y %H:%M")
      deadline += Time.zone_offset(deadline.zone)
    rescue
      deadline = nil
    end
    error ||= 'Не задан срок поручения' if deadline.nil?
    controller = TakeOffice::Employee.where(RowID: params[:controler]).first unless 
      params[:controler].nil? || params[:controler].blank?
    co_performers = []
    co_performers = params[:co_performers].map { |x| TakeOffice::Employee.where(RowID: x).first }.select { |x| !x.nil? } unless 
      params[:co_performers].nil? || params[:co_performers].blank?
    informants = []
    informants = params[:informants].map { |x| TakeOffice::Employee.where(RowID: x).first }.select { |x| !x.nil? } unless 
      params[:informants].nil? || params[:informants].blank?
    if error.nil?
      begin
        card = TaskCard.new
     
        sid = CardType.assignment.sid
        unless TaskSetup.instance.task_folder.nil? || TaskSetup.instance.task_folder.sid.nil?
          sid = TaskSetup.instance.task_folder.sid
        end
        unless current_employee.nil? || sid.nil? || current_employee.account_sid.blank?
          sdesc = sid.sdesc
          sdesc.owner = current_employee.account_sid.to_sid
          sid = DVCore::Security.new
          sid.sdesc = sdesc
          sid.save!
        end

        refs = RefListCard.new
        refs.sid = sid
        refs.save!

        files = FileListCard.new
        files.sid = sid
        unless params[:files].nil?
          params[:files].each { |file_id| 
            file = FileCard.find(file_id)
            unless file.nil?
              files.add_file(file)
            end
          }
        end
        files.save!

        card.sid = sid
        card.description = "Поручение от " + Time.now.strftime("%d.%m.%Y")
        card.main_info.author = current_employee
        card.main_info.registrator = current_employee
        card.main_info.controller = controller
        card.main_info.content = content
        card.main_info.Version = 2
        unless params[:parent_task].blank?
          card.main_info.ParentTaskID = params[:parent_task]
        end
        unless params[:parent_document].blank?
          card.main_info._ParentCard = params[:parent_document]
        end
        performers.each { |performer| 
          card.main_info.add_performer(performer) 
        }
        co_performers.each { |co_performer| 
          card.main_info.add_co_performer(co_performer)
        }
        informants.each { |informant| 
          card.main_info.add_acquaintance(informant)
        }
        card.main_info.deadline = deadline
        card.main_info.refs_list = refs
        card.main_info.file_list = files
        card.main_info.state = :executing
        card.save!

        unless params[:parent_task].blank?
          parent_task_info = current_user.task_infos.where(task_id: params[:parent_task]).first
          unless parent_task_info.nil?
            performers.each do |performer|
              unless (parent_task_info.delegated_to || "").index(performer.display_name)
                parent_task_info.delegated_to = parent_task_info.delegated_to + "; " unless parent_task_info.delegated_to.blank?
                parent_task_info.delegated_to = (parent_task_info.delegated_to || "") + performer.display_name
              end
            end
            puts "Folder: #{parent_task_info.folder.to_sym}"
            if parent_task_info.folder.to_sym == :performing
              parent_task_info.folder = :delegated

              overall_info = TasksInfo.get(current_user)
              overall_info.delegated = overall_info.delegated + 1
              overall_info.performing = overall_info.performing - 1
              if parent_task_info.is_new
                overall_info.delegated_new = overall_info.delegated_new + 1
                overall_info.performing_new = overall_info.performing_new - 1
              end

              overall_info.save!
            end
            parent_task_info.save!
          end
        end

        unless TaskSetup.instance.task_folder.nil?
          TaskSetup.instance.task_folder.add_hard_shortcut(card.id)
        end

        process = ProcessCard.find(Card.copy_card(TaskSetup.process_template_id))
        process.instance.is_template = false
        process.sid = TaskSetup.instance.process_folder.sid
        TaskSetup.instance.process_folder.add_hard_shortcut(process.id)
        process.description = card.description + ". Запуск обработки поручений"
        process.main_info.name = card.description + ". Запуск обработки поручений"
        process.save!
        task_var_id = process.find_variable('Поручения')
        unless task_var_id.nil?
          ProcessVariableValue.create!(InstanceID: process.id, ParentRowID: task_var_id, Value: card.id, Identity: 0, UseSparedValue: false)
        end

        process.start
      rescue Exception => ex
        error = ex.message
        error = "Внутреняя ошибка приложения" if error.blank?
        logger.error ex.message
        ex.backtrace.each { |line| logger.error line }
      end
    end
    
    if error.nil? || error.blank?
      respond_to do |format|
        format.json { render json: { result: :ok }, status: 200 }
      end
    else
      respond_to do |format|
        format.json { render json: { error: error }, status: 422 }
      end
    end
  end

  def show
  end
end