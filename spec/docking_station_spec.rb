require "docking_station.rb"

describe DockingStation do
  new_instance = DockingStation.new

  it 'DockingStation releases bike' do
    expect(new_instance.respond_to?(:release_bike)).to eq(true)
  end 
end
