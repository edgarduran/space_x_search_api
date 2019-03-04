require  "#{Rails.root}/lib/space_x/space_x_launches"

class Api::V1::LaunchesController < ApplicationController

  def index
    @launches = SpaceXLaunches.all
  end

  def show
    @launch = SpaceXLaunches.find(id: params[:id])
    render :show
  end

  private

  def query_params
    params.permit(:query)
  end
end
