class AddAthleteprofileToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :athleteprofile, :string
  end
end
