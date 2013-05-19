class Need < ActiveRecord::Base
  attr_accessible :deadline, :executed, :long_description, :short_description, :sphere, :when_executed, :who_executed

  MODES = ["Need", "Can"]
  SPHERE_TYPES = ["Psychological assistance", "Household", "Study", "Ideas for a creative", "Scientific activity", "Other"]
  
  belongs_to :user
  
  validates :user_id, presence: true
  validates :short_description, presence: true
  validates :long_description, presence: true
  validates :sphere, presence: true
  
  default_scope order: 'needs.created_at DESC'
  
  def self.search(search)
    if search
      find(:all, :conditions => ['sphere LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
