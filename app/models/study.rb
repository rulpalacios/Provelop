# == Schema Information
#
# Table name: studies
#
#  id          :integer          not null, primary key
#  title       :string
#  institution :string
#  dates       :string
#  description :string
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_studies_on_user_id  (user_id)
#

class Study < ApplicationRecord
  belongs_to :user
end
