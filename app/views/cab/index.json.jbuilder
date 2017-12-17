json.array! @cabs do |cab|
  json.extract! cab, :id, :latitude, :longitude
end
