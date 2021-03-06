require "dvcore/binary"
require "dvcore/file"
require "dvcore/security"
require "security_identifier"

class MainController < ApplicationController
  before_action :authenticate_user!, except: [:refresh_all, :file, :file_pdf]
  #http_basic_authenticate_with name: "dhh", password: "secret"

  def index
    @task_info = TasksInfo.get(current_user)
    @user = current_user
    @employee = current_employee
    @quick_performers = current_user.quick_performer_employees
  end

  def refresh_all
    TasksInfo.sync_all_if_needed
    head :no_content
  end

  def file
    file = DocsFile.get(params[:id])
    extname = File.extname(file.name)[1..-1]
    mime_type = Mime::Type.lookup_by_extension(extname)
    content_type = mime_type.to_s unless mime_type.nil?
    if content_type.nil?
      send_data file.data, filename: file.name, disposition: :inline
    else
      send_data file.data, filename: file.name, type: content_type, disposition: :inline
    end
  end

  def file_viewer
    redirect_to "/web/viewer.html?file=/file_pdf/#{params[:id]}"
    #@file_id = params[:id]
  end

  def file_pdf
    file = DocsFile.get(params[:id])
    temp_file = Tempfile.new(SecureRandom.uuid, '/tmp', encoding: 'ascii-8bit')
    temp_file_name = temp_file.path
    temp_file.write(file.data)
    temp_file.close
    if File.extname(file.name) == ".pdf"
      file_path = temp_file.path
    else
      system "lowriter --convert-to pdf --nologo #{temp_file.path} --outdir /tmp"
      temp_file.unlink
      file_path = "#{temp_file_name}.pdf"
    end
    if File.exists?(file_path)
      File.open(file_path, 'r') do |f|
        send_data f.read, filename: file.name, type: "application/pdf", disposition: :inline
      end
      File.delete(file_path)    
    else
      head :no_content
    end
  end

  def upload
    if params[:file].nil?
      render json: { error: 'file not found'}, status: 422
      return
    end
    file_name = params[:file].original_filename
    sid = CardType.file_card.sid
    unless current_employee.nil? || sid.nil? || current_employee.account_sid.blank?
      sdesc = sid.sdesc
      sdesc.owner = current_employee.account_sid.to_sid
      sid = DVCore::Security.new
      sid.sdesc = sdesc
      sid.save!
    end
    binary = DVCore::Binary.create_binary(file_name, params[:file].read)
    file = DVCore::File.new(name: file_name, binary: binary, sid: sid)
    file.save!
    
    file_card = FileCard.new
    file_card.file_name = file_name
    file_card.sid = sid
    file_card.description = file_name
    file_card.author = current_employee

    vfc_card = VersionedFileCard.new
    vfc_card.name = file_name
    vfc_card.description = file_name
    vfc_card.sid = sid

    version = vfc_card.new_version
    version.author = current_employee
    version.file = file

    vfc_card.save!

    file_card.versioned_file = vfc_card
    file_card.save!

    file.owner_card_id = vfc_card.id
    file.save!

    render json: { id: file_card.id }
  end

  def file_icon
    ext = params[:ext] || ''
    render json: { icon: ActionController::Base.helpers.asset_path(Icon.for_ext(ext)) }
  end
end