class Maze
  def initialize(direction)
    @direction = direction
  end

  def layout
    layout = {11 => 1, 21 => 1}
    @final_room = 21
    @current_room = 11
  end

  def direction
    if @direction == "forward"
      forward()
    elsif


  end

  def forward
    @current + 10
    hash[21] = 1
  end
