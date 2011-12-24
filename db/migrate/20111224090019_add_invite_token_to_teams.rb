class AddInviteTokenToTeams < ActiveRecord::Migration
  def self.up
    add_column :teams, :invite_token, :string
  end

  def self.down
    remove_column :teams, :invite_token
  end
end
