require "docking_station"
describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "release a bike" do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
  it "dock a bike" do
    bike = subject.dock_bike
    expect(bike.docked?).to eq true
  end
end
