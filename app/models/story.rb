# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  text       :text             not null
#  chapter_id :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Story < ActiveRecord::Base
  validates :title, :text, :chapter_id, presence: true
  
  belongs_to :chapter
end
