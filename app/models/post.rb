class Post < ActiveRecord::Base

  belongs_to :user

  named_scope :by_date, :order => "created_at DESC"

def date
  self.created_at.to_date
end

end
