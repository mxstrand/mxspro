class League < ActiveRecord::Base
  attr_accessible :commissioner_id, :draft_timer_seconds, :name, :player_count, :team_count

  has_many :fantasyteams

  belongs_to :commissioner, class_name: "User"
end
