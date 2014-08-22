require 'minitest/autorun'
require 'minitest/rg'
require './tweet'

class TweetTest < Minitest::Test
  def setup
    # Time.new(year, month, day, hour, min, sec, tz)
    @time = Time.new(2014, 1, 1, 0, 0, 0, "-05:00")
    @tweet = Tweet.new('Happy new year!!!', @time)
  end

  def test_initialize
    assert @tweet
    assert_equal 'Happy new year!!!', @tweet.message
    assert_equal "2014-01-01 00:00:00 -0500", @tweet.time.to_s
  end

  def test_initialize_with_error
    message = '*'*141
    assert_raises(RuntimeError) do
      Tweet.new(message, @time)
    end
  end

  def test_default_favs
    assert_equal 0, @tweet.favs
  end

  def test_fav_tweet
    @tweet.fav!
    assert_equal 1, @tweet.favs
    @tweet.fav!
    @tweet.fav!
    assert_equal 3, @tweet.favs
  end
end
