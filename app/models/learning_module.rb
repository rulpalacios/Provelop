# == Schema Information
#
# Table name: learning_modules
#
#  id         :integer          not null, primary key
#  name       :string
#  event_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_learning_modules_on_event_id  (event_id)
#

class LearningModule < ApplicationRecord
  has_many :module_contents, dependent: :destroy
  belongs_to :event

  accepts_nested_attributes_for :module_contents, allow_destroy: true, reject_if: proc { |attr| attr['content'].blank? }
end
