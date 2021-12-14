# == Schema Information
#
# Table name: events
#
#  id             :bigint           not null, primary key
#  description    :string
#  event_type     :string
#  learn          :string
#  modality       :string
#  name           :string
#  oriented       :string
#  price          :float
#  requirements   :string
#  specialization :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  creator_id     :bigint           not null
#
# Indexes
#
#  index_events_on_creator_id  (creator_id)
#
# Foreign Keys
#
#  fk_rails_...  (creator_id => creators.id)
#
require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
