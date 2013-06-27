class AddTeamseasonidToProteams < ActiveRecord::Migration
  def change
    add_column :proteams, :teamseasonid, :integer
  end
end
