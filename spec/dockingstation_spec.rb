require "dockingstation"

describe "DockingStation" do
  it "responds to 'release_bike'" do
    expect(DockingStation.new).to respond_to(:release_bike)
    # expect{DockingStation.new.release_bike}.not_to raise_error
  end
  it "releases working bike" do
    expect(DockingStation.new.release_bike).to be_working
  end
end
