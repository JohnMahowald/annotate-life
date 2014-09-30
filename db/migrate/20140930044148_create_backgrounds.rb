class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.string :img_url, null: false
      t.integer :user_id

      t.timestamps
    end
    
    add_index :backgrounds, :img_url
  end
end
