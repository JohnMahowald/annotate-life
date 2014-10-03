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
#  ord         :integer          not null
#

require 'test_helper'

class JournalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
