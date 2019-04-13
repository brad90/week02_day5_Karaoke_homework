require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../song.rb")


class GuestTest < MiniTest::Test


  def setup
    @song_choice = Song.new("Moves like Jagger")
    @guest1 = Guest.new("Bob",30, 100, @song_choice)
    @guest2 = Guest.new("Bob",15, 0, @song_choice)
  end

  def test_name
    assert_equal("Bob", @guest1.name)
  end

  def test_age
    assert_equal(30, @guest1.age)
  end

  def test_wallet
    assert_equal(100, @guest1.wallet)
  end

  def test_age
    assert_equal(@song_choice, @guest1.song_choice)
  end

  def test_say_whoooHooo
    result = @guest1.return_a_yell
    assert_equal("Whoooo",result)
  end

  def test_say_Awww_nnnooo
    result = @guest1.return_a_sad_yell
    assert_equal("Awww",result)
  end



end
