class Ride::BaseRideState

  def initialize(ride)
    @ride = ride
  end

  def start
    raise Exceptions::UnimplementedMethodException, 'Unimplemented method'
  end

  def end
    raise Exceptions::UnimplementedMethodException, 'Unimplemented method'
  end

  def payment_amount
    raise Exceptions::UnimplementedMethodException, 'Unimplemented method'
  end

end