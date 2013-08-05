class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :fteams_for_nav

  # find all unique Fantasyteam names and place in array
  # used in navbar drop-down
  def fteams_for_nav
    @fteams = Fantasyteam.pluck(:teamname)
    @fteamid = Fantasyteam.pluck(:id)
  end

end

