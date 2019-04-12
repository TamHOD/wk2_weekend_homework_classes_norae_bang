require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup()
    @song = Song.new('Tear You Down', 'Brookes Brothers', 'DnB', 'She tears you down darling, says your nothing at all..')
  end

  def test_get_song_name
    assert_equal('Tear You Down', @song.name)
  end

  def test_get_artist
    assert_equal('Brookes Brothers', @song.artist)
  end

  def test_get_genre
    assert_equal('DnB', @song.genre)
  end

  def test_get_lyrics
    lyrics = 'She tears you down darling, says your nothing at all..'
    assert_equal(lyrics, @song.lyrics)
  end
end
