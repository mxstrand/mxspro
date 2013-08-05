class Athlete < ActiveRecord::Base
  attr_accessible :nfldataid, :player_name, :age, :position, :team
  belongs_to :fantasyteams
  scope :unique_by_position, lambda { select('DISTINCT(position)') }

  include HTTParty
  base_uri 'http://api.nfldata.apiphany.com/trial/JSON'

  def self.get_player_data_and_pop_db
    teams = ['ARI', 'ATL', 'BAL', 'BUF', 'CAR', 'CHI', 'CIN', 'CLE',
             'DAL', 'DEN', 'DET', 'GB', 'HOU', 'IND', 'JAX', 'KC',
             'MIA', 'MIN', 'NE']
    teams.each do |team|
      puts "Getting #{team} player data..."

      response = Athlete.get("/Players/#{team}",
        :query => { :key => ENV["NFL_DATA_KEY"] })

      response.each do |player|
        pid = player["PlayerID"]
        unless exists?(nfldataid: pid)
          create!(
            nfldataid: pid,
            player_name: player["Name"],
            age: player["Age"],
            position: player["Position"],
            team: player["Team"]
            )
        end
      end
    end
  end
end


# BELOW IS THE OLD LOGIC USING ESPN's DATA API

# class Athlete < ActiveRecord::Base
#   attr_accessible :displayname, :espnathleteid, :athletenews, :athleteprofile
#   belongs_to :fantasyteams

#   include HTTParty
#   base_uri 'http://api.espn.com/v1/sports'

#   def self.pull_players_list_from_espn
#     response = Athlete.get('/football/nfl/athletes',
#       :query => { :offset => 0, :apikey => ENV["ESPN_API_KEY"] })

#     players = response['sports'].first['leagues'].first['athletes']
#     # we are using [] as a hash here

#     players.each do |player|
#       pid = player["id"]
#       unless exists?(espnathleteid: pid)
#         create!(
#           espnathleteid: pid,
#           displayname: player["displayName"],
#           athletenews: player["links"]["api"]["news"]["href"],
#           athleteprofile: player["links"]["web"]["athletes"]["href"]
#           )
#       end
#     end
#   end
# end
# _____________________________________________________________________


#   attr_accessor :name
#   attr_accessor :result

#   @athlete

#   def athlete
#     @athlete
#   end

#   def athlete=(whatever)
#     @athlete = whatever
#   end
# _______________________________________________________________________

#   def initialize
#     puts "Athlete object created."
#     @result = Athlete.get('/Players/PIT',
#       :query => { :key => ENV["NFL_DATA_KEY"] })
#   end

# ________________________________________________________________________

#     logger.info response.class
#     player_hash = response.first
#     player_hash["Age"]

#     logger.info players_hash.class

#     test_array = [1,2,3]
#     test_array[0]

#     test_hash = { foo: "bar", biz: "buzz" }
#     test_hash.keys
#     test_hash.values
#     test_hash.
