class Airport
#   attr_reader :planes_at_airport

  def initialize(capacity = 10)
    @DEFAULT_CAPACITY = capacity
    @planes_at_airport = []
    
  end

  def land(landing_plane)
    fail "Airport is full" if full? ==  true
    fail "Stormy weather, cannot land" if weather == "Stormy"
    puts "#{landing_plane} has landed"
    @planes_at_airport << landing_plane
  end

  def take_off(departing_plane)
    fail "No planes in the airport" if empty? == true
    fail "Stormy weather, cannot take off" if weather == "Stormy"
    fail "Plane not at the airport" if at_aiport?(departing_plane) == false
    puts "#{departing_plane} has taken off"
    @planes_at_airport - [departing_plane]
  end

  private

  def full?
    @planes_at_airport.count == @DEFAULT_CAPACITY
  end

  def empty?
    @planes_at_airport.count == 0
  end

  def weather
    @weather_condition = ["Sunny", "Rainy", "Windy", "Stormy", "Cloudy"]
    condition = @weather_condition[rand(5) - 1]
  end

  def at_aiport?(plane)
    @planes_at_airport.include?(plane)
  end

end