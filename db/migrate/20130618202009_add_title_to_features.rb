class AddTitleToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :title, :string
  end
end
