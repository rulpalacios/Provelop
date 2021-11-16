# == Schema Information
#
# Table name: events
#
#  id           :bigint           not null, primary key
#  description  :string
#  learn        :string
#  name         :string
#  oriented     :string
#  price        :float
#  requirements :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  creator_id   :bigint           not null
#
# Indexes
#
#  index_events_on_creator_id  (creator_id)
#
# Foreign Keys
#
#  fk_rails_...  (creator_id => creators.id)
#
class Event < ApplicationRecord
  belongs_to :creator
end
