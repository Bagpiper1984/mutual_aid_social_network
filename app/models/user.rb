class User < ActiveRecord::Base
  attr_accessible :city, :country, :date_of_birth, :education, :email, :login, :member_of_volunteer_organizations, :name, :other_contacts, :phone_number, :surname, :password, :password_confirmation
  has_secure_password
  
  validates :login, presence: true, uniqueness: true
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, 
	uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true	
end
