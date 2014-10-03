class Texture < ActiveRecord::Base
  validates :img_url, presence: true
end