class AddRenameEspnathleteid < ActiveRecord::Migration
  def up
    rename_column :Athletes, :espnathleteid, :nfldataid
  end

  def down
  end
end
