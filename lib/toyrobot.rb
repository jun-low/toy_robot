require_relative 'robot'
require_relative 'robot_runner'

# initializes a new a new robot
robot = Robot.new

puts 'Welcome to toy robot simulator!'

# keeps reading commands from input until user types EXIT
loop do
  puts 'input command (or type nothing to quit): '

  input = gets.chomp

  command = robot.parse(input)

  command&.execute unless command.nil?

  break if input == ''
end
