class RemoveProfieFromAthletes < ActiveRecord::Migration
  def up
    remove_column :athletes, :athleteprofile
  end

  def down
    add_column :athletes, :athleteprofile, :string
  end
end
