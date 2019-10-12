require 'robot'

RSpec.describe 'Robot' do
  describe 'Set up' do
    it 'robot should set up and not move when there is no commands' do
      robot = Robot.new
      expect(robot.position).to eq({"location" => [0, 0], "direction" => "north"})
    end
  end

  describe 'Move' do
    it 'robot should move to the north' do
      robot = Robot.new
      robot.move()
      expect(robot.position).to eq({"location" => [0, 1], "direction" => "north"})
    end

    it 'robot should move to north 2 times' do
      robot = Robot.new
      robot.move()
      robot.move()
      expect(robot.position).to eq({"location" => [0, 2], "direction" => "north"})
    end
  end

  describe 'Turn' do
    it 'robot should turn to the east' do
      robot = Robot.new
      robot.turn("right")
      expect(robot.position).to eq({"location" => [0, 0], "direction" => "east"})
    end
  end
end

