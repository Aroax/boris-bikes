require_relative 'Bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    # Return the docked bike
    @bike = bike

  end

  # Reads bike attribute on the instance => refactored to attr_reader
  # def bike
  #   @bike
  # end
end
