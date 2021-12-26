# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  name           :string
#  description    :string
#  price          :float
#  learn          :string
#  requirements   :string
#  creator_id     :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  modality       :string
#  event_type     :string
#  specialization :string
#  oriented       :string           default("{}"), is an Array
#
# Indexes
#
#  index_events_on_creator_id  (creator_id)
#  index_events_on_oriented    (oriented)
#

class Event < ApplicationRecord
  has_one_attached :image

  belongs_to :creator
  has_many :expected_learnings, dependent: :destroy
  has_many :learning_modules, dependent: :destroy

  has_many :purchases, dependent: :destroy
  has_many :users, through: :purhases

  has_many :requirements, dependent: :destroy
  has_many :sessions, dependent: :destroy

  accepts_nested_attributes_for :expected_learnings, allow_destroy: true, reject_if: proc { |attr| attr['learning'].blank? }
  accepts_nested_attributes_for :learning_modules, allow_destroy: true, reject_if: proc { |attr| attr['name'].blank? }
  accepts_nested_attributes_for :requirements, allow_destroy: true, reject_if: proc { |attr| attr['requirement'].blank? }
  accepts_nested_attributes_for :sessions, allow_destroy: true, reject_if: proc { |attr| attr['date'].blank? }
end
