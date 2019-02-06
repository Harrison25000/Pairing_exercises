require 'bike'

class DockingStation
  attr_reader :bike
  def initialize()

  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end


  def dock(bike)
    fail 'Dock station full' if @bike
    @bike = bike
  end

end

docking_station = DockingStation.new
