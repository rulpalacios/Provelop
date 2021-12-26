# == Schema Information
#
# Table name: sessions
#
#  id         :integer          not null, primary key
#  date       :string
#  event_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sessions_on_event_id  (event_id)
#

require "test_helper"

class SessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
