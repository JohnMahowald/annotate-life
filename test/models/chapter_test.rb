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

require 'test_helper'

class ChapterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
