# == Schema Information
#
# Table name: chapters
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
#  chapter_num :integer          not null
#  journal_id  :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Chapter < ActiveRecord::Base
  after_initialize :ensure_chapter_num
  validates :title, :chapter_num, :journal_id, presence: true  
  belongs_to :journal
  has_many :stories, dependent: :destroy
  
  
  def thumbnail_urls
    self.stories
      .where('img_url IS NOT NULL')
      .order('RANDOM()')
      .limit(4)
      .map { |story| story.img_url }
  end
  
  
  
  private
  def ensure_chapter_num
    return if self.chapter_num
    self.chapter_num = self.journal.chapters.count + 1
  end
end
