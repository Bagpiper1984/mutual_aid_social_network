class Can < ActiveRecord::Base
  attr_accessible :long_description, :short_description
  
  belongs_to :user
  validates :long_description, presence: true
  validates :short_description, presence: true
  validates :user_id, presence: true
  
  default_scope order: 'cans.created_at DESC'
end
