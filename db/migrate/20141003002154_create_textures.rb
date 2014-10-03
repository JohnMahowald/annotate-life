class CreateTextures < ActiveRecord::Migration
  def change
    create_table :textures do |t|
      t.string :img_url, null: false
      
      t.timestamps
    end
    
    add_index :textures, :img_url
  end
end
