require "docking_station"
describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  it { is_expected.to respond_to(:docks) }
  it { is_expected.to respond_to(:dock).with(1).argument}
  it "should return a capacity of 20" do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
    expect(subject.docks.length).to eql(DockingStation::DEFAULT_CAPACITY)
  end
  it "defaults capacity to 20" do
      station = DockingStation.new()
      expect(station.capacity).to eql(20)
  end

  describe '#release_bike' do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it 'docks something' do
    testbike = Bike.new
    subject.dock(testbike)
    expect(subject.docks.last).to eql(testbike)
  end

  describe '#release_bike' do
    it "should return an error if docking station is empty" do
      expect { subject.release_bike }.to raise_error 'There are no bikes!'
    end
  end
  describe '#dock' do
  it "cannot accept bike if dock is full" do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error 'This dock is full'
  end
end
end
