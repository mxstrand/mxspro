class Proteam < ActiveRecord::Base
  attr_accessible :teamseasonid, :teamname, :opponentfumblesforced, :opponentoffensiveyardsperplay, :opponentscore, :opponenttouchdowns

  has_one :fantasyteam

  include HTTParty
  base_uri 'http://api.nfldata.apiphany.com/trial/JSON'

  def self.get_team_data_and_pop_db
    response = Proteam.get('/TeamSeasonStats/2012',
      :query => { :key => ENV["NFL_DATA_KEY"] })

    response.each do |team|
      pid = team["TeamSeasonID"]
      unless exists?(teamseasonid: pid)
        create!(
          teamseasonid: pid,
          teamname: team["TeamName"],
          opponentfumblesforced: team["OpponentFumblesForced"],
          opponentoffensiveyardsperplay: team["OpponentOffensiveYardsPerPlay"],
          opponentscore: team["OpponentScore"],
          opponenttouchdowns: team["OpponentTouchdowns"]
          )
      end
    end
  end
end
