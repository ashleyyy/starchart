class Task < ActiveRecord::Base
  belongs_to :user 

  validates :user,
    presence: true

  before_create :set_default_date
  
  def set_default_date
    self.due_date = DateTime.now
  end

end
