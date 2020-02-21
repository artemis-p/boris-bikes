require_relative "bike"

class DockingStation
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise("No available bikes") unless @bikes.length > 0
    @bikes.pop
  end

  def dock(bike)
    raise("Docking station is full") if @bikes.length == 20
    @bikes.push(bike)
  end

end
