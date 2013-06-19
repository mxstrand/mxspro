class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|

      t.timestamps
    end
  end
end
