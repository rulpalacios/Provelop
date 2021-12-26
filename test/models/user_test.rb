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
  def record
    @record ||= build(:user)
  end

  context 'validations' do
    should validate_presence_of(:email)
    should validate_presence_of(:password_digest)
  end
end
