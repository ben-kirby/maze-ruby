require('rspec')
require('maze')
require('pry')

describe(Maze)do
  it("It will move current_room to 21 from 11 what argument forward is passed")do
    move = Maze.new("forward")
    expect(move.direction()).to(eq(21))
  end

  it("It will move current_room to 21 from 11 what argument forward is passed")do
    move = Maze.new("left")
    expect(move.direction()).to(eq(10))
  end

  it("It will move current_room to 21 from 11 what argument forward is passed")do
    move = Maze.new()

    move.direction("left")
    move.direction("forward")
    expect(move.direction()).to(eq(20))
  end
end
