require "docking_station.rb"

describe DockingStation do
  bike = DockingStation.new
  it 'DockingStation releases bike' do
    expect(bike.respond_to?(:release_bike)).to eq(true)
  end 

  it 'Release a working bike' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq(true)
  end

  it 'Returns a bike to the docking station' do
    bike = Bike.new
    subject.return_bike(bike)
    expect(subject.bike).to eq bike
    #station = DockingStation.new
    #expect(station.return_bike(bike)).to eq(bike)
  end
  describe 'release_bike' do
  it 'raise error if no bike is available' do
    expect { subject.release_bike }.to raise_error('No Bike In Station')
  end
  end
end
