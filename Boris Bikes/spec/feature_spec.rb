require './lib/docking_station.rb'


docking_station = DockingStation.new 30
bike = Bike.new
DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(bike)}
bike.working?
docking_station.bikes
