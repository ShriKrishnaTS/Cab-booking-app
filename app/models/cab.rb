class Cab < ActiveRecord::Base
  validates :latitude, presence: true
  validates :longitude, presence: true
end
