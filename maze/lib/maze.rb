class Maze
  def initialize(direction)
    @direction = direction
  end

  def layout
    layout = {11 => 1, 21 => 1}
    @final_room = 21
  end

  def direction
    @current_room = 11
    if @direction == "forward"
      forward()
    elsif @direction == "left"
      left()
    elsif @direction == "right"
      right()
    elsif @direction == "backward"
      backward()
    end
  end

  def forward
    @current_room = @current_room + 10
  end

  def left
    @current_room = @current_room - 1
  end

  def right
    @current_room = @current_room + 1
  end

  def backward
    @current_room = @current_room - 10
  end
end
