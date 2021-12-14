# == Schema Information
#
# Table name: learning_modules
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint           not null
#
# Indexes
#
#  index_learning_modules_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
class LearningModule < ApplicationRecord
  belongs_to :event
end
