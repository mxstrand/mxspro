class AddColumnsToProteams < ActiveRecord::Migration
  def change
    add_column :proteams, :teamname, :string
    add_column :proteams, :opponentfumblesforced, :integer
    add_column :proteams, :opponentoffensiveyardsperplay, :integer
    add_column :proteams, :opponentscore, :integer
    add_column :proteams, :opponenttouchdowns, :integer
  end
end
