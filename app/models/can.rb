class Can < ActiveRecord::Base
  attr_accessible :long_description, :sphere, :short_description
  
  belongs_to :user
  validates :sphere, presence: true
  validates :long_description, presence: true
  validates :short_description, presence: true
  validates :user_id, presence: true
  
  default_scope order: 'cans.created_at DESC'
end
