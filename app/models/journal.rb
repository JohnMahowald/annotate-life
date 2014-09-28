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
  validates :title, :user_id, presence: true
  belongs_to :user
  has_many :chapters, dependent: :destroy
end
