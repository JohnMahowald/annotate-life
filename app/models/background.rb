# == Schema Information
#
# Table name: backgrounds
#
#  id         :integer          not null, primary key
#  img_url    :string(255)      not null
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Background < ActiveRecord::Base
  validates :img_url, presence: true
  belongs_to :user
  
  def self.random_img
    Background.select(:img_url).order("RANDOM()").limit(1)[0].img_url
  end
end
