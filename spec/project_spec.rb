require('rspec')
require('project')
require('pry')

describe(Parcel)do
  it("Will calculate the volume")do
    test_parcel = Parcel.new("2", "2", "2", "10")
    expect(test_parcel.volume()).to(eq(8))
  end

  it("Will calculate the volume")do
    test_parcel = Parcel.new("2", "2", "2", "10")
    expect(test_parcel.cost_to_ship()).to(eq(13))
  end
end
