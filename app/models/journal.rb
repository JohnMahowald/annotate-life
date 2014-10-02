# == Schema Information
#
# Table name: journals
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
#  description :text
#  user_id     :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Journal < ActiveRecord::Base
  after_initialize :ensure_ord
  validates :title, :user_id, presence: true
  belongs_to :user
  has_many :chapters, dependent: :destroy
  
  private
  
  def ensure_ord
    self.ord ||= Journal.all.length
  end
end
