class RemoveColumnsFromAthletes < ActiveRecord::Migration
  def up
    remove_column :athletes, :athletenews
  end

  def down
    add_column :athletes, :athletenews, :string
  end
end
