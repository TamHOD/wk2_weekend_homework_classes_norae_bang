class Room

  attr_reader :name, :entry_price, :guests, :guest_limit, :current_song
  attr_writer :songs_queue

  def initialize(name, entry_price, guest_limit)
    @name = name
    @entry_price = entry_price
    @guest_limit = guest_limit
    @songs_queue = []
    @guests = []
    @current_song = @songs_queue[0]
    # @next_song = @songs_queue[1]
  end

  def get_number_of_guests
    return @guests.length
  end

  def add_guest_to_room(guest)
    @guests.push(guest)
  end

end
