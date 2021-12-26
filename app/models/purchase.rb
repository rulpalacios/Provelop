# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  event_id   :integer          not null
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_purchases_on_event_id  (event_id)
#  index_purchases_on_user_id   (user_id)
#

class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
