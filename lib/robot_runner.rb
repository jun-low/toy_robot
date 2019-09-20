class RobotRunner
  def self.forward!(input)
    robot = nil
    commands = input.split("\n")
    commands.each do |command|
      if command.include?("PLACE ")
        command.gsub!("PLACE ", "")
        x, y, direction = command.split(',')
        robot = Robot.new([x.to_i, y.to_i], direction.downcase)
      elsif command == "MOVE"
        robot.move
      end
    end
    "#{robot.location.join(",")},#{robot.direction.upcase}"
  end

  def self.turn!(input)
    robot = nil
    commands = input.split("\n")
    commands.each do |command|
      if command.include?("PLACE ")
        command.gsub!("PLACE ", "")
        x, y, direction = command.split(',')
        robot = Robot.new([x.to_i, y.to_i], direction.downcase)
      elsif command == "LEFT"
        3.times do
          robot.turn('right')
        end
      end
    end
    "#{robot.location.join(",")},#{robot.direction.upcase}"
  end

  def self.run!(input)
    robot = nil
    commands = input.split("\n")
    commands.each do |command|
      if command.include?("PLACE ")
        command.gsub!("PLACE ", "")
        x, y, direction = command.split(',')
        robot = Robot.new([x.to_i, y.to_i], direction.downcase)
      elsif command == "MOVE" && "LEFT"
        robot.turn('right')
        robot.move
      end
    end
    "#{robot.location.join(",")},#{robot.direction.upcase}"
  end
end
