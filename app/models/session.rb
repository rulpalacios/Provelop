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

class Session < ApplicationRecord
  belongs_to :event
end
