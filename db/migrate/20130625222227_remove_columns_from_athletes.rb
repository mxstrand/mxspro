class RemoveColumnsFromAthletes < ActiveRecord::Migration
  def up
    remove_column :athletes, :athletenews
    remove_column :athletes, :athleteprofie
  end

  def down
    add_column :athletes, :athleteprofie, :string
    add_column :athletes, :athletenews, :string
  end
end
