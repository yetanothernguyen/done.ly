class AddNameToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :name, :string
    add_column :teams, :description, :text
  end

  def self.down
    remove_column :teams, :description
    remove_column :teams, :name
  end
end
