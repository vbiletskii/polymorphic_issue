class CreateAdminsPersonalInformation < ActiveRecord::Migration[7.1]
  def change
    create_table :admins_personal_informations do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :admin

      t.timestamps
    end
  end
end
