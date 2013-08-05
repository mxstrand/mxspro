class FantasyteamsController < ApplicationController
  def index
    @unpaid_teams = Fantasyteam.where(feepaid: false)
    @paid_teams = Fantasyteam.where(feepaid: true)
  end

  def new
    @fantasyteam = Fantasyteam.new
  end

  helper_method :sort_column, :sort_direction
  def show
    @fantasyteam = Fantasyteam.find(params[:id])
    @athletes = Athlete.where("fantasyteamid = ?", @fantasyteam)

    @draftable_athletes = Athlete.where(:fantasyteamid => nil )
    @draftable_athletes = Athlete.order(sort_column + ' ' + sort_direction)
  end

  def create
    @fantasyteam = Fantasyteam.create!(params[:fantasyteam])
    respond_to do |format|
      format.html { redirect_to fantasyteams_url }
      format.js
    redirect_to fantasyteams_path and return
      # the format.js file in this instance is views/fantasyteams/create.js.erb
    end
  end

  def update
    @fantasyteam = Fantasyteam.find(params[:id])
    @fantasyteam.update_attributes!(params[:fantasyteam])
    respond_to do |format|
      format.html { redirect_to fantasyteams_url }
      format.js
      # the format.js file in this instance is views/fantasyteams/updates.js.erb
    end
  end

  def destroy
    @fantasyteam = Fantasyteam.destroy(params[:id])
       respond_to do |format|
      format.html { redirect_to fantasyteams_url }
      format.js
      # the format.js file in this instance is views/fantasyteams/destroy.js.erb
    end
  end

private
  def sort_column
    params[:sort] || "player_name"
  end

  def sort_direction
    params[:direction] || "asc"
  end

end

