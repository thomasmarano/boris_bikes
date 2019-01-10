require 'docking_station'

describe DockingStation do
  it "lets user set capacity when station is called" do
    station = DockingStation.new(5)
    expect(station.capacity).to eql(5)
  end
end
