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

require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
