require 'robot_runner'

RSpec.describe 'RobotRunsner' do
  describe 'go forward!' do
    let(:input) { "PLACE 0,0,NORTH
MOVE
REPORT"}
    it 'should run forward to the north' do
      expect(RobotRunner.forward!(input)).to eq('0,1,NORTH')
    end
  end

   describe 'turn left!' do
    let(:input) { "PLACE 0,0,NORTH
LEFT
REPORT"}
    it 'should turn left' do
      expect(RobotRunner.turn!(input)).to eq('0,0,WEST')
    end
  end

   describe 'run!' do
    let(:input) { "PLACE 1,2,EAST
MOVE
MOVE
LEFT
MOVE
REPORT"}
    it 'should run and move to different position' do
      expect(RobotRunner.run!(input)).to eq('3,3,NORTH')
    end
  end
end
