require './tweet'

class User
  attr_accessor :username, :password, :name
  attr_reader :tweets

  def initialize(username, password, name)
    @username = username
    @password = password
    @name = name
    # @tweets = Array.new
    @tweets = []
  end

  def tweet!(message)
    tweet = Tweet.new(message, Time.now)
    @tweets << tweet
  end
end
