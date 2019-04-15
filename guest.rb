class Guest

  attr_reader :name, :wallet, :fav_song
  attr_writer :wallet

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def sing_fav_song(song)
    if song.name == fav_song
      return song.lyrics
    end
  end

end
