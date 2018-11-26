class Parcel

  def initialize(height, width, length, weight)
    @height = height.to_i
    @width = width.to_i
    @length = length.to_i
    @weight = weight.to_i
  end

  def volume
    @volume = @height * @width * @length
  end

  def cost_to_ship
    volume()
    @cost = @volume + 5
  end
end
