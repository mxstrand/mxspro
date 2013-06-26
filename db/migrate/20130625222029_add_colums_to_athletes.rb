class AddColumsToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :position, :string
    add_column :athletes, :age, :integer
    add_column :athletes, :team, :string
  end
end
