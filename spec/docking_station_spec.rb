require "docking_station.rb"

describe DockingStation do
  new_instance = DockingStation.new

  it 'DockingStation releases bike' do
    expect(new_instance.respond_to?(:release_bike)).to eq(true)
  end 

  it 'Release a working bike' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq(true)
  end
end
