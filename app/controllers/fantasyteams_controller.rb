class FantasyteamsController < ApplicationController
  def index
    @unpaid_teams = Fantasyteam.where(feepaid: false)
    @paid_teams = Fantasyteam.where(feepaid: true)
  end

  def new
    @fantasyteam = Fantasyteam.new
  end

  def create
    @fantasyteam = Fantasyteam.create!(params[:fantasyteam])
    respond_to do |format|
      format.html { redirect_to fantasyteams_url }
      format.js
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
end
