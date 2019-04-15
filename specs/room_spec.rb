require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new('Woodstock Room', 5, 7)

    @songs = [
      @song1 = Song.new('Live Forever', 'Oasis', 'BritPop', 'You and I, we gonna live forever'),
    @song2 = Song.new('Robin Hood', 'Ocean Colour Scene', 'BritPop', 'When you`re starting to choke, have a whiskey and coke.'),
    @song3 = Song.new('Tear You Down', 'Brookes Brothers', 'DnB', 'She tears you down, darlin'),
    @song4 = Song.new('System', 'Nu:Tone', 'DnB', 'You`re in my system baby')
  ]

    @guests =
    [
      @guest1 = Guest.new('Gary', 15, 'Live Forever'),
    @guest2 = Guest.new('Barry', 10, 'Tear You Down'),
    @guest3 = Guest.new('Harry', 7, 'Robin Hood'),
    @guest4 = Guest.new('Larry', 12, 'System'),
    @guest5 = Guest.new('Tary', 13, 'Tear You Down'),
    @guest5 = Guest.new('Dary', 14, 'System')
  ]
  end

  def test_get_room_name
    assert_equal('Woodstock Room', @room.name)
  end

  def test_get_entry_price
    assert_equal(5, @room.entry_price)
  end

  def test_get_guest_limit
    assert_equal(7, @room.guest_limit)
  end

  def test_get_number_of_guests__0
    assert_equal(0, @room.get_number_of_guests)
  end

  def test_add_guest_to_room
    @room.add_guest_to_room(@guest1)
    @room.add_guest_to_room(@guest2)
    @room.add_guest_to_room(@guest3)
    @room.add_guest_to_room(@guest4)
    @room.add_guest_to_room(@guest5)
    assert_equal(5, @room.get_number_of_guests)
  end

  # def test_add_song_queue
  #
  #
  # end
  #
  # def test_current_song
  #   assert_equal('Live Forever', @room.current_song)
  # end


end
