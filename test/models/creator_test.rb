# == Schema Information
#
# Table name: creators
#
#  id         :integer          not null, primary key
#  name       :string
#  about      :string
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_creators_on_user_id  (user_id)
#

require "test_helper"

class CreatorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
