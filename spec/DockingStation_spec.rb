require "docking_station"
describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "release a bike" do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike) }

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
