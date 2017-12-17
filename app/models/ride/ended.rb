class Ride::Ended < Ride::BaseRideState
  def start
    'Cannot start an ended ride'
  end

  def end(destination)
    'Cannot End an ended ride'
  end

  def payment_amount
    (travelled_time * Prices::PERMIN + travelled_distance * Prices::PERKM + extras.to_f).ceil
  end


  private

  def travelled_time
    (@ride.end_time - @ride.start_time)/60
  end

  def travelled_distance
    @ride.distance_between(@ride.start_latitude, @ride.start_longitude,
                              @ride.end_latitude, @ride.end_longitude)
  end

  def extras
    Prices::HIPSTERCAR if @ride.cab.hipster?
  end
end