class CreateCans < ActiveRecord::Migration
  def change
    create_table :cans do |t|
      t.integer :user_id
      t.string :short_description
      t.text :long_description

      t.timestamps
    end
	add_index :cans, [:user_id, :created_at]
  end
end
