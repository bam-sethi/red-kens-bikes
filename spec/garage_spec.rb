require_relative './spec_helper'

describe Garage do

  def fill_garage garage
    10.times { garage.take_bike(Bike.new) }
  end

  let(:garage) { Garage.new({capacity: 10})}
  let(:bike) { Bike.new }

  it 'should be empty when we build it' do
    expect(garage.bike_count).to eq 0 
  end

  it 'should take a bike' do
    garage.take_bike(bike)

    expect(garage(garage).bike_count).to eq 1
  end



  it 'should fix a bike' do
    working_bike = Bike.new
    working_bike.fix

    puts garage.fix_bike(bike).inspect

    expect(working_bike).to eq working_bike
  end

  it 'should release a bike' do
    garage.release_bike(bike)

    expect(garage.bike_count).to eq 0
  end
  
    it 'should not accept a bike if it\'s full' do 
    fill_garage garage

    expect {garage.take_bike(bike)}.to raise_error 'Garage is full'
  end


end