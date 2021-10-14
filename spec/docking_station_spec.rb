require "docking_station.rb"

describe DockingStation do
  bike = DockingStation.new
  it 'DockingStation releases bike' do
    expect(bike.respond_to?(:release_bike)).to eq(true)
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # subject = DockingStation.new
      # bike = Bike.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#return_bike' do
    it 'raises an error when there is already a bike' do
      bike = Bike.new
      subject.return_bike(bike)
      expect { subject.return_bike(bike) }.to raise_error 'Bikes at maximum capacity'
    end

    it 'docking station should have a default capacity of 20 bikes' do
      expect(subject.max_bikes).to eq(20)
    end

  end


  it 'return bike will add a bike into docking station rack' do
    bikes= [bike]
    expect(subject.return_bikes(bike)).to eq(bikes)
  end

  it 'docking station does not exceed the capacity of 20 bikes' do

    20.times{subject.return_bikes(Bike.new)}
    expect { subject.return_bikes(Bike.new) }.to raise_error 'Bikes at maximum capacity'

  end


  it 'Release a working bike' do
    # station = DockingStation.new
    bike = Bike.new
    subject.return_bike(bike)
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
    it 'releases a bike' do
      bike = Bike.new
      subject.return_bike(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end

  end

end
