require "test_helper"

class UserTest < ActiveSupport::TestCase
  def record
    @record ||= build(:user)
  end

  context 'validations' do
    should validate_presence_of(:email)
    should validate_presence_of(:password_digest)
  end
end
