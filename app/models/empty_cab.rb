class EmptyCab < Cab

  def self.nearest_to(latitude, longitude, condition={})
    EmptyCab.all.where(condition)
        .inject do |nearest_cab, cab|
      nearest_cab.distance_to(latitude, longitude) < cab.distance_to(latitude, longitude) ? nearest_cab : cab
    end
  end

  default_scope { where(assigned: false) }

  def assign
    update_attributes(assigned: true)
  end
end