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

require "test_helper"

class PurchaseTest < ActiveSupport::TestCase
  fixtures :purchases

  def purchase
    @purchase ||= purchases(:rails_course_purchase)
  end

  def test_valid_purchase
    assert purchase.valid?
  end
end
