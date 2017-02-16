class User < ApplicationRecord
  validates :email,:password, presence:true
  has_secure_password
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :on => :create
  validates_presence_of :firstname,length: { minimum: 2 },:format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }
  validates_presence_of :lastname,length: { minimum: 2 }
  validates_presence_of :address, length: { minimum: 4 }
  validates_presence_of :password, length: { minimum: 6 }



  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } , length: { minimum: 6}
  validates_uniqueness_of :email

end
