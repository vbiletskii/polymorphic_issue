class Admin < ApplicationRecord
  has_one :personal_information, class_name: 'Admins::PersonalInformation'
  has_many :comments, as: :commentable

  delegate :first_name, :last_name, to: :personal_information, allow_nil: true

  def name
    "#{first_name} #{last_name}"
  end
end
