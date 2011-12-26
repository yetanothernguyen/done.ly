class Post < ActiveRecord::Base

  belongs_to :user
  has_many :votes

  scope :by_date, order("created_at DESC")
  scope :by_team, lambda { |team| joins(:user).joins("INNER JOIN #{TeamsUser.quoted_table_name} ON #{TeamsUser.quoted_table_name}.user_id = #{User.quoted_table_name}.id").where(["#{TeamsUser.quoted_table_name}.team_id = ?", team.id])}

def date
  self.created_at.to_date
end

end
