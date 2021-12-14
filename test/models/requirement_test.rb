# == Schema Information
#
# Table name: requirements
#
#  id          :bigint           not null, primary key
#  requirement :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_id    :bigint           not null
#
# Indexes
#
#  index_requirements_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
require "test_helper"

class RequirementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
