require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")


class RoomTest < MiniTest::Test

  def setup
    @song1= Song.new("Moves like Jagger")
    @song2= Song.new("Hello")
    @guest1 = Guest.new("Bob",30, 100, @song_choice)
    @guest2 = Guest.new("Bob",15, 0, @song_choice)

    @playlist = [@song1,@song2]

    @room1 = Room.new(@playlist, @guest1, 10)

  end

  def test_guest_name_in_room
    assert_equal("Bob", @room1.guest.name)
  end

  def test_room_cost
    assert_equal(10,@room1.cost)
  end

  def test_guest_in_room
    assert_equal(@guest1, @room1.guest)
  end

  def test_playlist_of_room
    assert_equal(@playlist, @room1.playlist)
  end


  def test_check_in_guest
    @room1.guest_checked_in(@guest1)
    assert_equal(@guest1, @room1.checked_in)
  end

  def test_check_out_guest
    @room1.guest_checked_out(nil)
    assert_equal(nil, @room1.checked_in)
  end


  def test_can_customer_afford_room__true
    result = @room1.can_customer_afford_it?(@guest1.wallet)
    assert_equal(true,result)
  end

  #
  def adding_money_to_till
    assert_equal(110,@room1.till)
  end












end
