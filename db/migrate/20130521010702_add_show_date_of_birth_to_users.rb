class AddShowDateOfBirthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :show_date_of_birth, :boolean, default: true 
  end
end
