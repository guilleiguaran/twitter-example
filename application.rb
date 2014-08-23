require './tweets_controller'

controller = TweetsController.new

close = false
while !close
  puts "\n\n\n"
  puts "Options: "
  puts "1. Show tweets"
  puts "2. Create a new tweet"
  puts "3. Exit"
  print "Option? "
  op = gets.to_i

  case op
  when 1
    controller.index
  when 2
    controller.new
  when 3
    close = true
  else
    puts "Invalid option"
  end

  puts "\n\n\n"
end
