require './user'
require './tweet_index_view'
require './tweet_new_view'

class TweetsController
  def initialize
    @user = User.new("andresxvz", "12345678", "Andres")
  end

  # List all resources
  def index
    @tweets = @user.tweets
    view = TweetIndexView.new(@tweets)
    view.render
  end

  # Show a resource
  # def show
  #
  # end

  # Request data to create a resource
  def new
    view = TweetNewView.new(self)
    view.render
  end

  # Create a resource
  def create(tweet_params)
    begin
      @user.tweet!(tweet_params[:message])
    rescue RuntimeError
      puts "Message is too long (more than 140 chars)"
    end
    index
  end

  # Show the current data of resource for edit
  # def edit
  #
  # end

  # Update the resource
  # def update
  #
  # end

  # Delete a resource
  # def destroy
  #
  # end
end
