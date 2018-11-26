class Parcel

  def initialize(height, width, length, weight, distance, speed)
    @height = height.to_i
    @width = width.to_i
    @length = length.to_i
    @weight = weight.to_i
    @distance = distance.to_i
    @speed = speed.to_i
  end

  def volume
    @volume = @height * @width * @length
  end

  def distance
    if @distance < 50
      @distance = 1
    elsif @distance >= 50 && @distance < 500
      @distance = 2
    else
      @distance = 3
    end
  end

  def speed
    if @speed < 2
      @speed = 10
    elsif @speed >= 2 && @speed < 7
      @speed = 5
    else
      @speed = 2
    end
  end

  def cost_to_ship
    volume()
    distance()
    speed()
    @cost = (((@volume * @weight) + @speed) * @distance) / 10
  end
end
