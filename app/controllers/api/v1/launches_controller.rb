class Api::V1::LaunchesController < ApplicationController

  def index
    @launches = space_x_service.all_launches
  end

  def show
    @launch = space_x_service.find_launch(params[:id])
    save_search
    render :show
  end

  private

  def query_params
    params.permit(:query)
  end

  def save_search
    search = case
              when params[:query]
                params[:query]
              when params[:id]
                params[:id]
              end

    Search.create(query: search, query_type: 'launches') if search
  end

  def space_x_service
    SpaceXService.new
  end
end
