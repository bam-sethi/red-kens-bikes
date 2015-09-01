#accept only broken bike 
#moving broken bikes from station to garage
#when fixed move to station
#should take capacity 
require_relative './spec_helper'


describe Van do 

  def fill_vans vans
    30.times { vans.collect(Bike.new) }
  end

  let(:vans) { Van.new({capacity: 30}) }
  let(:bike) { Bike.new }

  it 'should be empty at first' do
    expect(vans.bike_count).to eq 0
  end


  it 'should be able to collect a bike' do
    vans.collect(bike)

    expect(vans.bike_count).to eq 1
  end

  it 'should be able to drop off a bike at the station' do
    vans.collect(bike)
    vans.drop_off(bike)

    expect(vans.bike_count).to eq 0
  end


  it 'should not accept a bike if van is full' do 
    fill_vans vans

    expect { vans.collect(bike) }.to raise_error 'Van is full'
  end

  it 'should give only  the broken bikes' do
    broken_bike = Bike.new
    broken_bike.break 
    vans.collect(broken_bike)

    puts vans.available_bikes.inspect

    expect(vans.available_bikes).to eq [broken_bike]
  end



end
