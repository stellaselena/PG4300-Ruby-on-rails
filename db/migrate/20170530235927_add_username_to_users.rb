class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def self.up
    add_column :users, :username, :string, :unique => true, :null => false
  end

  def self.down
    remove_column :users, :username, :string
  end
end
