class Ride::Unstarted < Ride::BaseRideState
  def start
    ride = @ride.update_attributes(start_time: DateTime.current, status: 'started')
    if ride
      'Ride started successfully'
    end
  end

  def end(destination)
    'Cannot end an unstarted ride'
  end

  def payment_amount
    'Cannot calculate payment amount for a ride that has not ended'
  end
end