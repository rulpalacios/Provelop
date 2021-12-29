# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  email               :string
#  password_digest     :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  about               :string
#  country             :string
#  name                :string
#  role                :integer          default("0")
#  specialization      :string
#  years_of_experience :integer
#

class User < ApplicationRecord
  has_one :creator, dependent: :destroy
  has_many :studies, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :purchases, dependent: :destroy
  has_many :events, through: :purhases
  accepts_nested_attributes_for :studies, allow_destroy: true, reject_if: proc { |attr| attr['title'].blank? }
  accepts_nested_attributes_for :jobs, allow_destroy: true, reject_if: proc { |attr| attr['title'].blank? }

  has_secure_password
  has_one_attached :avatar

  enum role: %i[student proveloper creator].freeze

  validates :email, :password_digest, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  after_create :create_associations

  def create_associations
    create_creator
  end
end
