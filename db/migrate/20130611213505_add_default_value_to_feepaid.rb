class AddDefaultValueToFeepaid < ActiveRecord::Migration
  def change
    change_column :fantasyteams, :feepaid, :boolean, :default => false
  end
end
