class Background < ActiveRecord::Base
  validates :img_url, presence: true
  belongs_to :user
  
  def self.random_img
    Background.select(:img_url).order("RANDOM()").limit(1)[0].img_url
  end
end
