require_relative 'Bike'

class DockingStation
attr_reader :capacity
DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    @bikes.empty? ? ( fail 'No bikes available' ) : @bikes.pop
  end

  def dock(bike)
    full?(@bikes) ? (fail 'Docking station full') : @bikes << bike
  end

  private

  def full?(arr)
  arr.count >= @capacity
  end
  # Reads bike attribute on the instance => refactored to attr_reader
  # def bike
  #   @bike
  # end
end
