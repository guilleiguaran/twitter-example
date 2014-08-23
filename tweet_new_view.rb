class TweetNewView
  def initialize(controller)
    @controller = controller
  end

  def render
    print "Digite el tweet: "
    message = gets
    params = {
      :message => message
    }
    @controller.create(params)
  end
end
