class AddImgUrlToStories < ActiveRecord::Migration
  def change
    add_column :stories, :img_url, :string
    add_index :stories, :img_url
  end
end
