# == Schema Information
#
# Table name: creators
#
#  id         :bigint           not null, primary key
#  about      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_creators_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class CreatorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
