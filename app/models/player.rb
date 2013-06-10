class Player < ActiveRecord::Base
  attr_accessible :name, :position, :team_id
end
