# == Schema Information
#
# Table name: studies
#
#  id          :bigint           not null, primary key
#  dates       :string
#  description :string
#  institution :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_studies_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Study < ApplicationRecord
  belongs_to :user
end
