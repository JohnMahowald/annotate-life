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
#  img_url    :string(255)
#  ord        :integer          not null
#

class Story < ActiveRecord::Base
  after_initialize :ensure_ord
  
  validates :title, :text, :chapter_id, presence: true
  
  belongs_to :chapter
  
  private
  
  def ensure_ord
    return if self.ord
    self.ord = chapter.stories.count
  end
end
