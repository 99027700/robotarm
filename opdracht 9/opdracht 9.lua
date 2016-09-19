require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed = 0.99
getal = 9
for i = 1,5 do
  robot_arm: grab()
  for i = 1, getal do
    robot_arm: move_right()
  end
  getal = getal - 1
  robot_arm: drop()
  for i = 1, getal do
    robot_arm: move_left()
  end
  getal = getal - 1
end

