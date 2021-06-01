require './lib/Bike.rb'

class DockingStation

  def release_bike
    new_bike = Bike.new
    p new_bike.working?
  end

end
