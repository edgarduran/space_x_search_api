require  "#{Rails.root}/lib/space_x/space_x_rockets"

class Api::V1::RocketsController < ApplicationController

  def index
    @rockets = SpaceXRockets.all
  end

  def show
    @rocket = SpaceXRockets.find(id: params[:id])
  end

  private

  def save_search
    search = params[:id]

    Search.create(query: search, query_type: 'rockets') if search
  end
end
