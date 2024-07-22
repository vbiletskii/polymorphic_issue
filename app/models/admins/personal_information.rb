class Admins::PersonalInformation < ApplicationRecord
  self.table_name = 'admins_personal_informations'

  belongs_to :admin
end
