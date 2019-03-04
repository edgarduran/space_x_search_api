require  "#{Rails.root}/lib/space_x/space_x_launch_pads"

class Api::V1::LaunchPadsController < ApplicationController

  def index
    @pads = SpaceXLaunchPads.all
  end

  def show
    @pad = SpaceXLaunchPads.find(id: params[:id])
  end
end
