class User < ApplicationRecord
  has_many :studies, dependent: :destroy
  has_many :jobs, dependent: :destroy
  accepts_nested_attributes_for :studies, allow_destroy: true, reject_if: proc { |attr| attr['title'].blank? }
  accepts_nested_attributes_for :jobs, allow_destroy: true, reject_if: proc { |attr| attr['title'].blank? }

  has_secure_password

  enum role: %i[student proveloper creator].freeze

  validates :email, :password_digest, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
