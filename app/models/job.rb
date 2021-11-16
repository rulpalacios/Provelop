# == Schema Information
#
# Table name: jobs
#
#  id           :bigint           not null, primary key
#  dates        :string
#  description  :string
#  organization :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_jobs_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Job < ApplicationRecord
  belongs_to :user
end
