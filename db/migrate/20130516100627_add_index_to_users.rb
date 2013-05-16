class AddIndexToUsers < ActiveRecord::Migration
  def self.up
    add_index :users, :remember_token, name: 'remember_token_index'
  end
  
  def self.down
    remove_index :users, 'remember_token_index'
  end
end
