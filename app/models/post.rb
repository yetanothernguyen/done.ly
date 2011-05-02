class Post < ActiveRecord::Base

  belongs_to :user
  has_many :votes

  named_scope :by_date, :order => "created_at DESC"

def date
  self.created_at.to_date
end

end
