class Session < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } , length: { minimum: 6},:message=>"invalid"
  validates_uniqueness_of :email
  validate :password
end
