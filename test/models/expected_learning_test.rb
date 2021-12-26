# == Schema Information
#
# Table name: expected_learnings
#
#  id         :integer          not null, primary key
#  learning   :string
#  event_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_expected_learnings_on_event_id  (event_id)
#

require "test_helper"

class ExpectedLearningTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
