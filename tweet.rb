class Tweet
  attr_accessor :message, :time
  attr_reader :favs

  def initialize(message, time)
    if message.length > 140
      raise "Message can't be longer than 140 chars"
    end
    @message = message
    @time = time
    @favs = 0
  end

  def fav!
    # @favs = @favs + 1
    @favs += 1
  end
end
