require_relative 'robot'
require_relative 'robot_runner'

# initializes a new a new robot
Robot.new

puts 'Welcome to toy robot simulator!'

# # keeps reading commands from input until user types EXIT
# loop do
#   puts 'input command (EXIT to quit): '

#   input = gets

#   command = commands.parse(input)

#   command&.execute unless command.nil?

#   break if input =~ /exit/i
# end
