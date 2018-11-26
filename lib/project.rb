class Parcel

  def initialize(height, width, length, weight, distance, speed, coupon, wrapping)
    @height = height.to_i
    @width = width.to_i
    @length = length.to_i
    @weight = weight.to_i
    @distance = distance.to_i
    @speed = speed.to_i
    @coupon = coupon
    @wrapping = wrapping
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
    @wrapping_cost = 0
    volume()
    distance()
    speed()
    @shipping_cost = (((@volume * @weight) + @speed) * @distance) / 10
    discount()
    if @wrapping === "true"
      surface_area()
      @total_cost
    else
      @shipping_cost
    end
  end

  def discount
    if @coupon === "superdeal"
      @cost = @cost - 2
    else
      @cost
    end
  end


  def surface_area
    side1 = (@length * @width)
    side2 = (@width * @height)
    side3 = (@length * @height)
    surface_area = (side1 + side2 + side3) * 2

    @wrapping_cost = surface_area / 20
    @total_cost = @wrapping_cost + @shipping_cost
    @wrapping_cost
  end

  def shipping_cost
    @shipping_cost
  end

  def wrapping_cost
    @wrapping_cost
  end
end
