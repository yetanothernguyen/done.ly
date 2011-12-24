class RemoveTeamIdInUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :team_id
  end

  def self.down
    add_column :users, :team_id, :integer
  end
end
