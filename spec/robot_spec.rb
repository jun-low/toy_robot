require 'robot'

# Are you setup?
RSpec.describe 'Robot' do
  describe 'set up' do
    it 'should set up and not move when there is no argument' do
      robot = Robot.new
      expect(robot.report).to eq({"location" => [0, 0], "direction" => "north"})
    end
  end

  describe 'move' do
    it 'should move to north' do
      robot = Robot.new
      robot.move()
      expect(robot.report).to eq({"location" => [0, 1], "direction" => "north"})
    end

    it 'should move to north 2 times' do
      robot = Robot.new
      robot.move()
      robot.move()
      expect(robot.report).to eq({"location" => [0, 2], "direction" => "north"})
    end
  end

  describe 'turn' do
    it 'should turn to east' do
      robot = Robot.new
      robot.turn("right")
      expect(robot.report).to eq({"location" => [0, 0], "direction" => "east"})
    end
  end
end

