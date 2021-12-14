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
class Requirement < ApplicationRecord
  belongs_to :event
end
