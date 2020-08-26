require './lib/room'
require './lib/house'
require 'minitest/autorun'
require 'minitest/pride'

class HouseTest < Minitest::Test
  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end
  def test_price
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.price
    assert_equal "123 sugar lane", house.address
    assert_equal [], house.rooms
  end

  def test_add_room
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')

    house.add_room(room_1)
    house.add_room(room_2)

    assert_equal [room_1, room_2], house.rooms

  end
  def test_above_market_value
    house = House.new("$400000", "123 sugar lane")

    assert_equal false, house.above_market_value
  end

  # def test_rooms_from_category
  #   house = House.new("$400000", "123 sugar lane")
  #   room_1 = Room.new(:bedroom, 10, '13')
  #   room_2 = Room.new(:bedroom, 11, '15')
  #   room_3 = Room.new(:living_room, 25, '15')
  #   room_4 = Room.new(:basement, 30, '41')
  #   house.add_room(room_1)
  #   house.add_room(room_2)
  #   house.add_room(room_3)
  #   house.add_room(room_4)
  #   require "pry";binding.pry
  #   assert_equal [room_1.category, room_2.category], house.rooms_from_category(:bedroom)
  # end

  def test_house_details
  house = House.new("$40000", "123 sugar lane")
require "pry";binding.pry
  assert_equal {"price"==>400000, "address"==>"123 sugar lane"}, house.details
  end
end
