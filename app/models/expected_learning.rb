# == Schema Information
#
# Table name: expected_learnings
#
#  id         :bigint           not null, primary key
#  learning   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint           not null
#
# Indexes
#
#  index_expected_learnings_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
class ExpectedLearning < ApplicationRecord
  belongs_to :event
end
