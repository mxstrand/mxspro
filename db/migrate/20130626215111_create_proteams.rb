class CreateProteams < ActiveRecord::Migration
  def change
    create_table :proteams do |t|

      t.timestamps
    end
  end
end
