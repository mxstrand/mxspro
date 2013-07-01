class Ownercleanup < ActiveRecord::Migration
  def change
    add_column :fantasyteams, :owner_id, :integer
    remove_column :fantasyteams, :owner
  end
end
