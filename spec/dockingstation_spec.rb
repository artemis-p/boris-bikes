require "dockingstation"

describe DockingStation do
  before(:each) do
    @bike = Bike.new
  end

  it "responds to 'release_bike'" do
     expect(subject).to respond_to(:release_bike)
     # expect{DockingStation.new.release_bike}.not_to raise_error
  end

  it "releases working bike" do
    subject.dock(@bike)
    expect(subject.release_bike).to be_working
  end

  it "releases working bike" do
    subject.dock(@bike)
    expect(subject.release_bike).to eq @bike
  end

  it "responds to 'dock(bike)' with 1 argument" do
    expect(subject).to respond_to(:dock).with(1).argument
    # expect(DockingStation.new).to respond_to.(:dock).with(1).argument

  end

  it "docks released bike" do
    expect(subject.dock(@bike)).to eq [@bike]
    # expect(DockingStation.new).to respond_to(:bike)
  end

   it "raises an error when there are no bikes" do
    station = DockingStation.new
    expect { station.release_bike }.to raise_error("No available bikes")
  end 

  it "raises an error when there are 20 bikes docked" do
    20.times {subject.dock Bike.new}
    expect{subject.dock(Bike.new)}.to raise_error("Docking station is full")
  end
end
