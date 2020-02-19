require "bike"

describe "Bike" do
  it "responds to 'working?'" do
    expect(Bike.new).to respond_to(:working?)
    # expect{Bike.new.working?}.not_to raise_error
  end
end
