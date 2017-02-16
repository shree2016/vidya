class Form < ApplicationRecord

  validates :firstname,length: { minimum: 2 },:format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }
  validates  :lastname,length: { minimum: 2 }
  validates :address, length: { minimum: 4 }
validates_presence_of :password, length: { minimum: 6 }


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } , length: { minimum: 6}
  validates_uniqueness_of :email




end
