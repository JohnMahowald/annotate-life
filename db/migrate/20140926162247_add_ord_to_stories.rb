class AddOrdToStories < ActiveRecord::Migration
  def change
    add_column :stories, :ord, :integer    
    change_column :stories, :ord, :integer, null: false
    add_index :stories, :ord
  end
end
