require_relative './spec_helper'
require_relative '../lib/bike'

#we are describing the functionality of the specific Class Bike
describe Bike do

  let(:bike) { Bike.new }

  it 'it should not be broken after we create it' do
    expect(bike.broken?).to be false
  end

  it 'should be able to break' do
    bike.break

    expect(bike.broken?).to be true
  end

  it 'should be fixable' do 
    bike.break #true
    bike.fix #false

    expect(bike.broken?).to be false
  end


end
