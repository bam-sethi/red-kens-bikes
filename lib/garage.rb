class Garage

  def initialize
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def take_bike bike
    @bikes << bike
  end

  def fix_bike bike
    @bikes.select { |bike| bike.fix }
  end

  def release_bike bike
    @bikes.delete bike
  end


end
