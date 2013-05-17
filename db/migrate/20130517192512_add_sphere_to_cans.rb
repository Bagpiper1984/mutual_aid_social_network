class AddSphereToCans < ActiveRecord::Migration
  def change
    add_column :cans, :sphere, :string
  end
end
