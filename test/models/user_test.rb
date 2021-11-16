# == Schema Information
#
# Table name: users
#
#  id                  :bigint           not null, primary key
#  about               :string
#  country             :string
#  email               :string
#  name                :string
#  password_digest     :string
#  role                :integer          default("student")
#  specialization      :string
#  years_of_experience :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
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
