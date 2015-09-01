require_relative './spec_helper'

describe Garage do

  let(:garage) { Garage.new }
  let(:bike) { Bike.new }

  it 'should be empty when we build it' do
    expect(garage.bike_count).to eq 0 
  end

  it 'should take a bike' do
    garage.take_bike(bike)

    expect(garage.bike_count).to eq 1
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



end