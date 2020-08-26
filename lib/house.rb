require './lib/room'

class House
attr_reader :address, :rooms, :cost
def initialize(cost, address)
  @address = address
  @rooms = []
  @cost = cost
  end

  def price
    price_hash = Hash.new(0)
    price_hash[@cost] = 400000
    price_hash[@cost]
end
  def add_room(room)
    @rooms << room
  end
  def above_market_value
    if price > 500000
      true
    else
      false
    end
  end
  def rooms_from_category(room)
   @rooms.find_all do |rooms|
    rooms == room
    end
  end

  def details

    details_hash = Hash.new
    details_hash["price"] = price
    details_hash["address"] = address
    details_hash
  end
end
