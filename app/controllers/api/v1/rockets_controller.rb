class Api::V1::RocketsController < ApplicationController

  def index
    @rockets = space_x_service.all_rockets
  end

  def show
    @rocket = space_x_service.find_rocket(params[:id])
  end

  private

  def space_x_service
    SpaceXService.new
  end
end
