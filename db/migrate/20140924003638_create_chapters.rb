class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title, null: false
      t.integer :chapter_num, null: false
      t.integer :journal_id, null: false

      t.timestamps
    end
    
    add_index :chapters, :title
    add_index :chapters, :chapter_num
    add_index :chapters, :journal_id
  end
end
