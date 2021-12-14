# == Schema Information
#
# Table name: events
#
#  id             :bigint           not null, primary key
#  description    :string
#  event_type     :string
#  learn          :string
#  modality       :string
#  name           :string
#  oriented       :string           default([]), is an Array
#  price          :float
#  requirements   :string
#  specialization :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  creator_id     :bigint           not null
#
# Indexes
#
#  index_events_on_creator_id  (creator_id)
#  index_events_on_oriented    (oriented) USING gin
#
# Foreign Keys
#
#  fk_rails_...  (creator_id => creators.id)
#
class Event < ApplicationRecord
  belongs_to :creator
  has_many :expected_learnings, dependent: :destroy
  has_many :requirements, dependent: :destroy
  has_many :learning_modules, dependent: :destroy
  has_many :purchases
  has_many :users, through: :purhases

  accepts_nested_attributes_for :expected_learnings, allow_destroy: true, reject_if: proc { |attr| attr['learning'].blank? }
  accepts_nested_attributes_for :requirements, allow_destroy: true, reject_if: proc { |attr| attr['requirement'].blank? }
  accepts_nested_attributes_for :learning_modules, allow_destroy: true, reject_if: proc { |attr| attr['name'].blank? }
end
