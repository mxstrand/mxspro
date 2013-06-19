class AddEspnathleteidToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :espnathleteid, :integer
  end
end
