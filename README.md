# Toy Robot Simulator

The Toy Robot exercise was originally developed by Jon Eaves. He explains the reasons on [this](https://joneaves.wordpress.com/2014/07/21/toy-robot-coding-test/) blog post.
This exercise is intended to practice about Test Driven Development (TDD).

## Getting Started
A simulation of a toy robot moving on a table, of dimensions 5 units x 5 units. 
See [Specification](https://github.com/jun-low/toy_robot/blob/master/README.md#specification) below for details.

### Prerequisites
Make sure you have Ruby 2.3 installed in your machine. If you need help installing Ruby, take a look at the [official installation guide](https://www.ruby-lang.org/en/documentation/installation/).


### Install
1. Install gem dependencies with the [Bundle](https://bundler.io/):

    `$ gem install bundler`

2. Input commands manually on command line:

    `$ git clone git@github.com:jun-low/toy_robot.git`

3. Change to the app directory:

    `$ cd toy_robot`

4. Install dependencies:

    `$ bundle install`

## Running the app

    `$ ruby lib/toyrobot.rb`

## Running the tests
Code quality and verification is tested using [RSpec](http://rspec.info/).

    `$ bundle exec rspec`
  
  
## Specification
### Description
- The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
- There are no other obstructions on the table surface.
- The robot is free to roam around the surface of the table, but must be prevented from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.

- Create an application that can read in commands of the following form
```
   PLACE X,Y,F
   MOVE
   LEFT
   RIGHT
   REPORT
```

1. PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
2. The origin (0,0) can be considered to be the SOUTH WEST most corner.
3. The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command. The application should discard all commands in the sequence until a valid PLACE command has been executed
4. MOVE will move the toy robot one unit forward in the direction it is currently facing.
5. LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
6. REPORT will announce the X,Y and F of the robot. This can be in any form, but standard output is sufficient.
7. A robot that is not on the table can choose to ignore the MOVE, LEFT, RIGHT and REPORT commands.
8. Input can be from a file, or from standard input, as the developer chooses.
9. Provide test data to exercise the application.

Example Input and Output:

a)
```
   PLACE 0,0,NORTH
   MOVE
   REPORT
   Output: 0,1,NORTH
```
b)
```
   PLACE 0,0,NORTH
   LEFT
   REPORT
   Output: 0,0,WEST
```

c)
```
   PLACE 1,2,EAST
   MOVE
   MOVE
   LEFT
   MOVE
   REPORT
   Output: 3,3,NORTH
```

### Constraints
The toy robot must not fall off the table during movement. This also includes the initial placement of the toy robot. Any move that would cause the robot to fall must be ignored. 

The file is assumed to have ASCII encoding. It is assumed that the PLACE command has only one space, that is PLACE 1, 2, NORTH is an invalid command. All commands must be in upcase, all lower and mixed case commands will be ignored.
