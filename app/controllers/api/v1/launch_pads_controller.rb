class Api::V1::LaunchPadsController < ApplicationController

  def index
    @pads = space_x_service.all_pads
  end

  def show
    @pad = space_x_service.find_pad(params[:id])
  end

  private

  def save_search
    search = params[:id]

    Search.create(query: search, query_type: 'launches') if search
  end

  def space_x_service
    SpaceXService.new
  end
end
