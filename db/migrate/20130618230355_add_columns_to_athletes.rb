class AddColumnsToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :player_name, :string
    add_column :athletes, :nfldataid, :integer
    add_column :athletes, :position, :string
    add_column :athletes, :age, :integer
    add_column :athletes, :team, :string
    add_column :athletes, :fantasyteamid, :integer
  end
end
