class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.integer :team_count
      t.string :name
      t.integer :player_count
      t.integer :draft_timer_seconds
      t.integer :commissioner_id

      t.timestamps
    end
  end
end
