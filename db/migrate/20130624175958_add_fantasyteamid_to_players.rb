class AddFantasyteamidToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :fantasyteamid, :integer
  end
end
