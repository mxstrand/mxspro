class Athlete < ActiveRecord::Base
  attr_accessible :displayname, :espnathleteid, :athletenews, :athleteprofile
  include HTTParty
  base_uri 'http://api.espn.com/v1/sports'

  def self.pull_player_data_from_espn
    response = Athlete.get('/football/nfl/athletes',
      :query => { :offset => 0, :apikey => ENV["ESPN_API_KEY"] })

    players = response['sports'].first['leagues'].first['athletes']

    players.each do |player|
      id = player["id"]
      unless exists?(espnathleteid: id)
        create!(
          espnathleteid: id,
          displayname: player["displayName"],
          athletenews: player["links"]["api"]["news"]["href"],
          athleteprofile: player["links"]["web"]["athletes"]["href"]
          )
      end
    end
  end
end





__END__

class Testimony < ActiveRecord::Base
  attr_accessible :content, :screen_name, :tweet_id

  def self.pull_tweets
    Twitter.favorites("railscasts").each do |tweet|
      unless exists?(tweet_id: tweet.id)
        create!(
          tweet_id: tweet.id,
          content: tweet.text,
          screen_name: tweet.user.screen_name,
        )
      end
    end
  end
end

parsed_json = ActiveSupport::JSON.decode(your_json_string)
