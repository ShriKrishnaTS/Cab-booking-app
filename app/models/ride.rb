class Ride < ActiveRecord::Base
  
  attr_accessor :conditions

  belongs_to :cab

  validates :cab, presence: true
  validates :start_latitude, presence: true
  validates :start_longitude, presence: true
  validates :end_latitude, presence: true, if: Proc.new { |cab| cab.ended? }
  validates :end_longitude, presence: true, if: Proc.new { |cab| cab.ended? }

  enum status: [:unstarted, :started, :ended]
  
end