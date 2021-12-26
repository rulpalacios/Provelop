# == Schema Information
#
# Table name: requirements
#
#  id          :integer          not null, primary key
#  event_id    :integer          not null
#  requirement :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_requirements_on_event_id  (event_id)
#

require "test_helper"

class RequirementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
