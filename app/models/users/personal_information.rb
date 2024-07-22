class Users::PersonalInformation < ApplicationRecord
  self.table_name = 'users_personal_informations'

  belongs_to :user
end
