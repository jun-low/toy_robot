class Robot
  attr_reader :location, :direction
  def initialize(location = [0,0], direction = "north")
    @location = location
    @direction = direction
  end

def report
  {
    "location" => @location,
    "direction" => @direction
  }
 end

def move()
  if @direction == 'north'
    @location[1] += 1
  elsif
    @location[0] += 1
  end
 end

def turn(left_or_right)
   if left_or_right == 'right' && @direction == 'north'
    @direction = 'east'
  elsif left_or_right == 'right' && @direction == 'east'
    @direction = 'south'
  elsif left_or_right == 'right' && @direction == 'south'
    @direction = 'west'
  elsif left_or_right == 'right' && @direction == 'west'
    @direction = 'north'
  end
 end
end
