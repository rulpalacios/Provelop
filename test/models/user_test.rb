# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  email               :string
#  password_digest     :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  about               :string
#  country             :string
#  name                :string
#  role                :integer          default("0")
#  specialization      :string
#  years_of_experience :integer
#

require "test_helper"

class UserTest < ActiveSupport::TestCase
  fixtures :users

  def user
    @user ||= users(:joe)
  end

  def test_valid_user
    assert user.valid?
  end
end
