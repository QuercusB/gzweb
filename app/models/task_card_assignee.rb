require 'take_office/employee'

class TaskCardAssignee < ActiveRecord::Base
  self.table_name = "dvtable_{80314B8B-4825-4205-9FE7-F6B294DA9113}"
  self.primary_key = "RowID"

  before_create :assign_id
  belongs_to :assignee, class_name: 'TakeOffice::Employee', primary_key: 'RowID', foreign_key: 'Assignee'
  belongs_to :main_info, class_name: :TaskCardMainInfo, primary_key: 'RowID', foreign_key: 'ParentRowID'

  protected

  def assign_id
    self.RowID ||= SecureRandom.uuid
    self.ParentRowID ||= '00000000-0000-0000-0000-000000000000'
    self.ParentTreeRowID ||= '00000000-0000-0000-0000-000000000000'
  end

end