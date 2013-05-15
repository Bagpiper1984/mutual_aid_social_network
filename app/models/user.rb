class User < ActiveRecord::Base
  attr_accessible :admin, :city, :country, :date_of_birth, :education, :email, :login, :member_of_volunteer_organizations, :name, :other_contacts, :password_digest, :phone_number, :remember_token, :surname
end
