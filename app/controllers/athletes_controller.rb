class AthletesController < ApplicationController
  def index
    @athletes = Athlete.pull_player_data_from_espn
  end
end
