class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.integer :user_id
      t.string :short_description
      t.string :sphere
      t.string :long_description
      t.date :deadline
      t.boolean :executed
      t.integer :who_executed
      t.date :when_executed

      t.timestamps
    end
	add_index :needs, [:user_id, :created_at]
  end
end
