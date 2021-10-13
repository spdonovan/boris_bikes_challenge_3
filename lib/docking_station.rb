require_relative 'bike'
class DockingStation
   attr_reader :bike

  def initialize (bike = Bike.new)
    @bike = bike

  end

  def release_bike
    fail 'No Bike In Station' unless @bike
    @bike
  end

  def return_bike(bike)
    @bike = bike
  end

  #def bike
    #return @bike
  #end
end
