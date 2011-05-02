class AddCachedSlugToTeams < ActiveRecord::Migration
  def self.up
    add_column :teams, :cached_slug, :string
  end

  def self.down
    remove_column :teams, :cached_slug
  end
end
