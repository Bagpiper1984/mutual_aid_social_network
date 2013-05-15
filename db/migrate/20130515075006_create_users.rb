class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest
      t.string :name
      t.string :surname
      t.date :date_of_birth
      t.string :country
      t.string :city
      t.string :education
      t.string :member_of_volunteer_organizations
      t.string :email
      t.string :phone_number
      t.string :other_contacts
      t.string :remember_token
      t.boolean :admin

      t.timestamps
    end
  end
end
