require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.99

for i = 1, 8 do 
  robot_arm: move_right()
       robot_arm: grab()
     color = robot_arm: scan()
     print(color)
  if color == "white" then
    robot_arm: move_right()
    robot_arm: drop()
  else
    robot_arm: drop()
  end
end