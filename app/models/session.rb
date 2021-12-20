# == Schema Information
#
# Table name: sessions
#
#  id         :bigint           not null, primary key
#  date       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint           not null
#
# Indexes
#
#  index_sessions_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
class Session < ApplicationRecord
  belongs_to :event
end
