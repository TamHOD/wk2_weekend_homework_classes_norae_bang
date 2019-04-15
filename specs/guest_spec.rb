require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../song')
class TestGuest < MiniTest::Test

  def setup()
    @guest = Guest.new('Gary', 15, 'Live Forever')
    @song1 = Song.new('Live Forever', 'Oasis', 'BritPop', 'You and I, we gonna live forever')
  end

  def test_get_guest_name
    assert_equal('Gary', @guest.name)
  end

  def test_get_wallet
    assert_equal(15, @guest.wallet)
  end

  def test_sing_fav_song
    lyrics = 'You and I, we gonna live forever'
    assert_equal(lyrics, @guest.sing_fav_song(@song1))
  end

  

end
