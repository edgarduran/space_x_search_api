class Api::V1::RocketsController < ApplicationController

  def index
    @rockets = space_x_service.all_rockets
  end

  def show
    @rocket = space_x_service.find_rocket(params[:id])
  end

  private

  def save_search
    search = params[:id]

    Search.create(query: search, query_type: 'rockets') if search
  end

  def space_x_service
    SpaceXService.new
  end
end
