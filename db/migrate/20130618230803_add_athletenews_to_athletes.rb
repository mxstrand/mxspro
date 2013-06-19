class AddAthletenewsToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :athletenews, :string
  end
end
