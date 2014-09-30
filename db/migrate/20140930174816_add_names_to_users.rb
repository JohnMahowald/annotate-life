class AddNamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_index :users, :fname
    add_index :users, :lname
  end
end
