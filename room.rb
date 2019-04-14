class Room

  attr_reader :playlist, :guest, :cost, :checked_in, :till, :capacity, :food

  def initialize(playlist, guest, cost)
    @guest = guest
    @playlist = playlist
    @cost = cost
    @checked_in = nil
    @till = 100
    @capacity = 2
    @food = 5
    @tab = {}
  end

  def guest_checked_in(guest)
    @checked_in = guest
  end

  def guest_checked_out(guest)
    @checked_in = nil
  end

  def can_customer_afford_it?(guest_wallet)
    return true if @guest.wallet >= @cost
    return false
  end

  def customer_pays_for_room
    @guest.wallet -= @cost
    @till += @cost
  end

  def room_capacity_over_capacity(guests)
    return true if @capacity <= guests.length
    return false
  end

  def customer_song_in_playlist
     @playlist.each { |song| return @guest.return_a_yell if song = @guest.song_choice}
  end

  # def customer_pays_for_food
  #   @tab[:@food] += 1
  # end





end
