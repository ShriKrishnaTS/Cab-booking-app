class Ride < ActiveRecord::Base
  include Location
  attr_accessor :conditions

  belongs_to :cab

  validates :cab, presence: true
  validates :start_latitude, presence: true
  validates :start_longitude, presence: true
  validates :end_latitude, presence: true, if: Proc.new { |cab| cab.ended? }
  validates :end_longitude, presence: true, if: Proc.new { |cab| cab.ended? }

  enum status: [:unstarted, :started, :ended]

  before_validation :assign_empty_cab, if: :new_record?

  after_initialize :set_state


  def start
    @state.start
  end

  def end(destination)
    @state.end(destination)
  end

  def payment_amount
    @state.payment_amount
  end


  private

  def set_state
    @state = RideStateFactory.create(self)
  end

  def assign_empty_cab
    self.cab = EmptyCab.nearest_to(start_latitude, start_longitude, conditions)
    self.cab.assign if self.cab
  end
end