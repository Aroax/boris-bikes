class Bike
# @working = true
  def initialize(working = true)
    @working = working
  end

  def working?
    @working
  end

end

class DockingStation

  def release_bike
    new_bike = Bike.new
    p new_bike.working?
  end

end

dock = DockingStation.new
dock.release_bike
