class Post < ActiveRecord::Base

  belongs_to :user
  has_many :votes

  scope :by_date, order("created_at DESC")
  scope :by_team, lambda { |team| joins(:user).joins("INNER JOIN `teams_users` ON `teams_users`.user_id = `users`.id").where(["`teams_users`.team_id = ?", team.id])}

def date
  self.created_at.to_date
end

end
