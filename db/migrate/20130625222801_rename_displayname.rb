class RenameDisplayname < ActiveRecord::Migration
  def up
    rename_column :Athletes, :displayname, :player_name
  end

  def down
  end
end
