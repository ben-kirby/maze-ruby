require('rspec')
require('project')
require('pry')

describe(Parcel)do
  it("Will calculate the volume")do
    test_parcel = Parcel.new("2", "2", "2", "5", "100", "2")
    expect(test_parcel.cost_to_ship()).to(eq(9))
  end

  it("Will calculate the volume")do
    test_parcel = Parcel.new("2", "2", "2", "10")
    expect(test_parcel.cost_to_ship()).to(eq(13))
  end

  it("Will calculate the total cost")do
    test_parcel = Parcel.new("2", "2", "2", "5", "100", "2")
    expect(test_parcel.cost_to_ship()).to(eq(9))
  end
end
