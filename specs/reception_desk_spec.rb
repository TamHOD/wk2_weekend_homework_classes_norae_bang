require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../reception_desk')

class TestReceptionDesk < MiniTest::Test

  def setup

    @desk = Desk.new(100)

    @room = Room.new('Woodstock Room', 5, 4)

    @guests =
    [
      @guest1 = Guest.new('Gary', 15, 'Live Forever'),
    @guest2 = Guest.new('Barry', 10, 'Tear You Down'),
    @guest3 = Guest.new('Harry', 7, 'Robin Hood'),
    @guest4 = Guest.new('Larry', 12, 'System'),
    @guest5 = Guest.new('Tary', 13, 'Tear You Down'),
    @guest6 = Guest.new('Dary', 14, 'System')
  ]

  end

  def test_get_till_amount
    assert_equal(100, @desk.till)
  end

  def test_get_menu_item_price
    assert_equal(3, @desk.get_menu_item_price('soju'))
  end

  def test_admit_new_guest__succeed
    @desk.admit_new_guest(@room, @guest1, @desk)
    assert_equal(10, @guest1.wallet)
    assert_equal(1, @room.get_number_of_guests)
    assert_equal(105, @desk.till)
  end

  def test_admit_new_guest__fail
    @desk.admit_new_guest(@room, @guest1, @desk)
    @desk.admit_new_guest(@room, @guest2, @desk)
    @desk.admit_new_guest(@room, @guest3, @desk)
    @desk.admit_new_guest(@room, @guest4, @desk)
    @desk.admit_new_guest(@room, @guest5, @desk)
    assert_equal(4, @room.get_number_of_guests)
  end

  def test_sell_menu_item__succeed
    @desk.sell_menu_item('beer', @guest2, @desk)
    assert_equal(5, @guest2.wallet)
    assert_equal(105, @desk.till)
  end

  def test_sell_menu_item__fail
    @desk.sell_menu_item('nachos', @guest3, @desk)
    assert_equal(7, @guest3.wallet)
    assert_equal(100, @desk.till)
  end

end
