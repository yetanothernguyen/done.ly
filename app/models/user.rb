class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  
  has_many :posts
  belongs_to :team
  has_many :created_teams, :class_name => 'Team'

    # This is called by Devise to build resource before new/create
  def self.new_with_session(params, session)
    super.tap do |user|
      if session["devise.invite_token"]
        team = Team.find_by_invite_token(session["devise.invite_token"])
        user.team = team
      end
    end
  end
end
