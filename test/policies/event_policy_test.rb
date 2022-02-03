require 'test_helper'

class EventPolicyTest < ActiveSupport::TestCase
  fixtures %i[users events]

  def user
    @user ||= users(:joe)
  end

  def event
    @event ||= events(:rails_course)
  end

  def policy
    @policy ||= EventPolicy.new(user, event)
  end

  def test_new
    assert policy.new?
  end

  def test_update
    assert policy.update?
  end
end
