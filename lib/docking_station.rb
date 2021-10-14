require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize (bike = Bike.new)
    @max_bikes = 20
    @bikes = []
  end

  def release_bike
    p @bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def return_bike(bike)
    fail 'Bikes at maximum capacity' if @bike
    @bike = bike
  end

  #def bike
  #return @bike
  #end
  def max_bikes
    @max_bikes
  end

  def return_bikes(bike)
    if @bikes.size < @max_bikes
      @bikes << bike
      @bikes
    else
      fail 'Bikes at maximum capacity'
    end
  end

  def bikes
    @Bikes
  end
end
