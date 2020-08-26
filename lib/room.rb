class Room
attr_reader :category, :length, :width

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @room_is_painted = false
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    @room_is_painted
  end

  def paint
    @room_is_painted = true
  end
end
