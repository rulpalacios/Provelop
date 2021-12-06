# == Schema Information
#
# Table name: purchases
#
#  id         :bigint           not null, primary key
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_purchases_on_event_id  (event_id)
#  index_purchases_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#  fk_rails_...  (user_id => users.id)
#
class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
