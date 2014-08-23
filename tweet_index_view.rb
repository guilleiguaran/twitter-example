class TweetIndexView
  def initialize(tweets)
    @tweets = tweets
  end

  def render
    puts "Lista de tweets"
    if @tweets.empty?
      puts "No tweets to show"
    else
      @tweets.each do |tweet|
        puts "*"*10
        puts tweet.message
        puts tweet.time
      end
    end
  end
end
