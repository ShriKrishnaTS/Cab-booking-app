class Ride::RideStateFactory
  def self.create(ride)
    if ride.unstarted?
      Ride::Unstarted.new(ride)
    elsif ride.started?
      Ride::Started.new(ride)
    elsif ride.ended?
      Ride::Ended.new(ride)
    end
  end
end