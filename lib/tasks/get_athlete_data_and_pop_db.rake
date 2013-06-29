namespace :getNFLdata do
  desc "API call to NFLData.com and returns all NFL players and populates DB"
  task players: :environment do
    Athlete.get_player_data_and_pop_db
  end

  task teams: :environment do
    Proteam.get_team_data_and_pop_db
  end

end

# DEVELOPMENT
# rake getNFLdata:players
# rake getNFLdata:teams

# PRODUCTION
# heroku run rake getNFLdata:players
# heroku run rake getNFLdata:teams
