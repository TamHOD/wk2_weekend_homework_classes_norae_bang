class Desk

  attr_accessor :till

  def initialize(till)

    @till = till
    @menu =
      [
        {name: 'beer',
        price: 5},
        {name: 'nachos',
        price: 8},
        {name: 'soju',
        price: 3}
      ]


  end

  def get_menu_item_price(menu_item)
    @menu.each do |item|
      if item[:name] == menu_item
        return item[:price]
      end
    end
  end

  def admit_new_guest(room, guest, desk)
    if room.get_number_of_guests == room.guest_limit
      return false
    else
      guest.wallet -= room.entry_price
      desk.till += room.entry_price
      room.add_guest_to_room(guest)
    end
  end

  def sell_menu_item(menu_item, guest, desk)
    if desk.get_menu_item_price(menu_item) > guest.wallet
      return false
    else
      guest.wallet -= desk.get_menu_item_price(menu_item)
      desk.till += desk.get_menu_item_price(menu_item)
    end
  end

end
