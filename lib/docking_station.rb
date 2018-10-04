#require_relative 'bike'
class DockingStation

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

class Bike
  def working?
    true
  end
end
