class Ride::RideStateFactory
  def self.create(ride)
    if ride.unstarted?
      Ride::Unstarted.new(ride)
    end
  end
end