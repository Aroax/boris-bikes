require_relative 'Bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    # Return the docked bike
    fail 'Docking station full' if @bikes.count >= 20
    @bikes << bike

  end

  # Reads bike attribute on the instance => refactored to attr_reader
  # def bike
  #   @bike
  # end
end
