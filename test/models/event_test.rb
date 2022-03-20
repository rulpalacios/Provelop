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
#  status         :string
#  oriented       :string
#
# Indexes
#
#  index_events_on_creator_id  (creator_id)
#

require "test_helper"

class EventTest < ActiveSupport::TestCase
  fixtures :events

  def event
    @event ||= events(:rails_course)
  end

  def test_valid_event
    assert event.valid?
  end
end
