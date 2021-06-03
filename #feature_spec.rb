# For moving manual feature tests into
require '../lib/DockingStation'
docking_station = DockingStation.new
docking_station.release_bike

20.times { docking_station.dock Bike.new }
