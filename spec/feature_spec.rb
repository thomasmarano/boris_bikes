require 'docking_station'

describe DockingStation do
  it "should return a capacity of 20" do
    20.times { subject.dock(Bike.new) }
    expect(subject.docks.length).to eql(20)
  end
end
