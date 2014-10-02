class AddOrdToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :ord, :integer, null: false
    add_index :journals, :ord
  end
end
