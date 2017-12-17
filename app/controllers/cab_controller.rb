class CabController < ApplicationController
  def index
    @cab = Cab.all
  end
  private 
    def cab_params
    params.permit(:latitude, :longitude, :color)
  end
end
