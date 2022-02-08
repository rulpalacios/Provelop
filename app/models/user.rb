# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  about                  :string
#  country                :string
#  name                   :string
#  role                   :integer          default("0")
#  specialization         :string
#  years_of_experience    :integer
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  has_one :creator, dependent: :destroy
  has_many :studies, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :purchases, dependent: :destroy
  has_many :events, through: :purhases
  accepts_nested_attributes_for :studies, allow_destroy: true, reject_if: proc { |attr| attr['title'].blank? }
  accepts_nested_attributes_for :jobs, allow_destroy: true, reject_if: proc { |attr| attr['title'].blank? }

  has_one_attached :avatar

  enum role: %i[student proveloper creator admin].freeze

  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  after_create :create_associations

  def create_associations
    create_creator
  end
end
