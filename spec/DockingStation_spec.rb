require "docking_station"
describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "release a bike" do
    #station = DockingStation.new
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
end
