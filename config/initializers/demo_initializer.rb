require 'take_office/employee'

unless ActiveRecord::Migrator.needs_migration?
  demo_data = YAML.load_file("#{Rails.root}/config/demo.yml")
  unless demo_data.nil?
    env_data = demo_data[Rails.env]
    unless env_data.nil?
      user_data = env_data["user"].symbolize_keys!
      unless user_data.nil?
        User.create_demo_user(user_data)
        TakeOffice::Employee.quick_performers_ids = env_data["quick"]
      end
    end
  end
end
