require "dockingstation"

describe DockingStation do
  it "responds to 'release_bike'" do
     expect(subject).to respond_to(:release_bike)
     # expect{DockingStation.new.release_bike}.not_to raise_error
  end
  it "releases working bike" do
    expect(subject.release_bike).to be_working
  end

  it "responds to 'dock(bike)' with 1 argument" do
    expect(subject).to respond_to(:dock).with(1).argument
    # expect(DockingStation.new).to respond_to.(:dock).with(1).argument

  end

  it "docks released bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
    # expect(DockingStation.new).to respond_to(:bike)
  end
end
