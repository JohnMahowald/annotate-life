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

require 'test_helper'

class BackgroundTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
