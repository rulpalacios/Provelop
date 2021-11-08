class User < ApplicationRecord
  has_secure_password

  enum role: %i[student proveloper creator].freeze

  validates :email, :password_digest, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
