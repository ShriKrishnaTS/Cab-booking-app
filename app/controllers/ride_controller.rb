class RideController < ApplicationController
   protect_from_forgery with: :null_session

  # POST /ride
  def create
    ride = Ride.new(start_latitude: ride_params[:latitude],
                          start_longitude: ride_params[:longitude],
                          conditions: {color: ride_params[:color]})
    if ride.save
      render json: {ride_id: ride.id, message: 'Cab successfully assigned' }
    else
      render json: 'Sorry, no cabs available at the moment. Please try after some time'
    end
  end

   #PUT ride/1/ride_start
  #PUT ride/:id/ride_start
  def start_ride
    message = Ride.find(params[:id]).start
    render json: {message: message}
  end

  private
  def ride_params
    params.permit(:latitude, :longitude, :color)
  end
end
