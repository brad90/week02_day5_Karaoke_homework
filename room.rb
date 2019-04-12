class Room

  attr_reader :playlist, :guest, :cost, :checked_in, :till

  def initialize(playlist, guest, cost)
    @guest = guest
    @playlist = playlist
    @cost = cost
    @checked_in = nil
    @till = 100
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
  #
  def adding_money_to_till
    @till += @cost
    @guest.wallet -= @cost 
  end





end
