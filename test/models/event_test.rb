# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  name           :string
#  description    :string
#  price          :float
#  learn          :string
#  requirements   :string
#  creator_id     :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  modality       :string
#  event_type     :string
#  specialization :string
#  oriented       :string           default("{}"), is an Array
#
# Indexes
#
#  index_events_on_creator_id  (creator_id)
#  index_events_on_oriented    (oriented)
#

require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
