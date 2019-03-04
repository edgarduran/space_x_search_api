require  "#{Rails.root}/lib/space_x/space_x_launches"

class Api::V1::LaunchesController < ApplicationController

  def index
    @launches = SpaceXLaunches.all
  end

  def show
    @launch = SpaceXLaunches.find(id: params[:id])
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
end
