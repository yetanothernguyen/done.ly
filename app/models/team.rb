class Team < ActiveRecord::Base
	has_friendly_id :name, :use_slug => true
  #belongs_to :author, :class_name => 'User'
  belongs_to :creator, :class_name => 'User', :foreign_key => 'user_id'
  has_and_belongs_to_many :members, :class_name => 'User'
  before_create :set_invite_token
  after_create :set_creator_team_membership

  def is_creator?(user)
    user && user == self.creator
  end
  
  private
  def set_invite_token
    self.invite_token = ActiveSupport::SecureRandom.hex(10)
  end

  def set_creator_team_membership
    self.creator.teams << self
    self.creator.save
  end
end
