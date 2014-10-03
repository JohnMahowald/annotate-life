# == Schema Information
#
# Table name: textures
#
#  id         :integer          not null, primary key
#  img_url    :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Texture < ActiveRecord::Base
  validates :img_url, presence: true
  
  private
  
  def self.select_random
    Texture.select(:img_url).order("RANDOM()").limit(1)[0].img_url
  end
end
