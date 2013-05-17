class User < ActiveRecord::Base
  after_destroy :ensure_an_admin_remains
  before_save { |user| user.email = email.downcase }
  before_save { |user| user.login = login.downcase }
  before_save :create_remember_token
  
  attr_accessible :city, :country, :date_of_birth, :education, :email, :login, :member_of_volunteer_organizations, :name, :other_contacts, :phone_number, :surname, :password, :password_confirmation
  has_secure_password
  
  has_many :cans, dependent: :destroy
  
  validates :login, presence: true, uniqueness: true
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, 
	uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  private
	def ensure_an_admin_remains
	  if User.count.zero?
		raise "Last user can\'t be deleted"
	  end
    end

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end	
