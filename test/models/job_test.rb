# == Schema Information
#
# Table name: jobs
#
#  id           :integer          not null, primary key
#  title        :string
#  organization :string
#  dates        :string
#  description  :string
#  user_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_jobs_on_user_id  (user_id)
#

require "test_helper"

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
