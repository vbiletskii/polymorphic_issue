class CreateUsersPersonalInformations < ActiveRecord::Migration[7.1]
  def change
    create_table :users_personal_informations do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :user

      t.timestamps
    end
  end
end
