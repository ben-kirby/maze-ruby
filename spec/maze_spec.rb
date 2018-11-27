require('rspec')
require('maze')
require('pry')

describe(Sphynx)do
  it("Return true/ false for riddle 1")do
    riddle_one = Sphynx.new(2 ,1, 3)
    expect(riddle_one.riddle_one()).to(eq(true))
  end
end
