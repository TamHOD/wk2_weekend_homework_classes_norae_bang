class Song

  attr_reader :name, :artist, :genre, :lyrics

  def initialize(name, artist, genre, lyrics)
    @name = name
    @artist = artist
    @genre = genre
    @lyrics = lyrics
  end

end
