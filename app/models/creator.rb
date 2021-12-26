# == Schema Information
#
# Table name: creators
#
#  id         :integer          not null, primary key
#  name       :string
#  about      :string
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_creators_on_user_id  (user_id)
#

class Creator < ApplicationRecord
  has_many :events, dependent: :destroy
  belongs_to :user
end
