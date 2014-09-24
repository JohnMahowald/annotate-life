class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.integer :chapter_id, null: false

      t.timestamps
    end
    add_index :stories, :chapter_id
  end
end
