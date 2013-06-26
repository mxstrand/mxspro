class CreateFantasyteams < ActiveRecord::Migration
  def change
    create_table :fantasyteams do |t|
      t.string :teamname
      t.string :owner
      t.boolean :feepaid, :default => false

      t.timestamps
    end
  end
end
