require_relative 'bike'

class DockingStation
<<<<<<< HEAD
attr_reader :var
@@bikes_free = Array.new

  def initialize
    @var = Bike.new
    #@@bikes_free = Array.new
    @station_contains_bike = true
  end

  def release_bike
   if @station_contains_bike == true
    @var.working?
    @@bikes_free.push(@var)
    @station_contains_bike = false
    return @var
   else
    "No bike available"
   end
=======
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
>>>>>>> 2031ecdd6d6e840131da700851f56bf4d065bd7d
  end

def dock(x)
  puts "#{@station_contains_bike} #{@@bikes_free}"
  if @station_contains_bike == false && @@bikes_free.include?(x)
    @@bikes_free.delete(x)
    @station_contains_bike = true
    @var = x
    "Bike Docked"
  else
    "Unable to dock bike"
  end
end

end

class Bike
  def working?
    true
  end
end
