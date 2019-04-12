require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")


class SongTest < MiniTest::Test

  def setup
    @new_song = Song.new('Moves like Jagger')
  end

  def test_song_title
    result = @new_song.title
    assert_equal('Moves like Jagger', result)
  end


end
