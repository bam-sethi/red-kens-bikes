class Van

  DEFAULT_CAPACITY = 5

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []

  end

  def bike_count
    @bikes.count
  end


  def collect_station bike
    raise 'Station is full' if full?
    raise 'Van is full' if full?
    @bikes << bike
  end

  def drop_off bike
    @bikes.delete bike
  end

  def full? 
    bike_count == @capacity
  end

end