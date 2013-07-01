class AddLeagueToFantasyteams < ActiveRecord::Migration
  def change
    add_column :fantasyteams, :league_id, :integer
  end
end
