class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :title, null: false
      t.text :description
      t.integer :user_id, null: false

      t.timestamps
    end
    
    add_index :journals, :title
    add_index :journals, :user_id
  end
end
