require_relative 'bike'
class DockingStation
  attr_reader :bike

  # def initialize (bike = Bike.new)
  #   @bike = bike

  # end

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
end
