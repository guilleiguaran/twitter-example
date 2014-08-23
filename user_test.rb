require 'minitest/autorun'
require 'minitest/rg'
require './user'
require './tweet'

class UserTest < Minitest::Test
  def setup
    @user = User.new("andrexs", "12345678", "Andres V.")
  end

  def test_initialize
    # assert_equal false, @user.nil?
    assert @user
    assert_equal "andrexs", @user.username
    assert_equal "12345678", @user.password
    assert_equal "Andres V.", @user.name
  end

  def test_tweets
    # assert_equal 0, @user.tweets.size
    assert @user.tweets.empty?
  end

  def test_tweet
    @user.tweet!("Hello, Twitter")
    assert_equal 1, @user.tweets.size

    tweet = @user.tweets.first
    assert_kind_of Tweet, tweet
    assert_equal "Hello, Twitter", tweet.message
  end
end
