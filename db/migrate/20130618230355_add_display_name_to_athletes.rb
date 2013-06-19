class AddDisplayNameToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :displayname, :string
  end
end
