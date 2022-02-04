# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  about                  :string
#  country                :string
#  name                   :string
#  role                   :integer          default("0")
#  specialization         :string
#  years_of_experience    :integer
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
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
