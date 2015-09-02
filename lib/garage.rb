class Garage

  DEFAULT_CAPACITY = 8

  def initialize(options = {})
    @bikes = []
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def bike_count
    @bikes.count
  end

  def take_bike bike
    raise 'Garage is full' if full?
    @bikes << bike
  end

  def fix_bike bike
    @bikes.select { |bike| bike.fix }
  end

  def release_bike bike
    @bikes.delete bike
  end


end
