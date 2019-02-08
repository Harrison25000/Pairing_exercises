require_relative 'bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20
attr_reader :capacity
  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = DEFAULT_CAPACITY
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end


  def dock(bike)
    fail 'Docking station full' if full?
    bike.report_broken == true || false
    @bikes << bike
  end

  def release_broken_bike(bike)
    fail 'Broken bike' if bike.report_broken
    bike
 end


  private

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end

end

docking_station = DockingStation.new
