# == Schema Information
#
# Table name: users
#
#  id                  :bigint           not null, primary key
#  about               :string
#  country             :string
#  email               :string
#  name                :string
#  password_digest     :string
#  role                :integer          default("student")
#  specialization      :string
#  years_of_experience :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class User < ApplicationRecord
  has_one :creator, dependent: :destroy
  has_many :studies, dependent: :destroy
  has_many :jobs, dependent: :destroy
  accepts_nested_attributes_for :studies, allow_destroy: true, reject_if: proc { |attr| attr['title'].blank? }
  accepts_nested_attributes_for :jobs, allow_destroy: true, reject_if: proc { |attr| attr['title'].blank? }

  has_secure_password

  enum role: %i[student proveloper creator].freeze

  validates :email, :password_digest, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  after_create :create_associations

  def create_associations
    create_creator
  end

end
