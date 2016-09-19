require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.99

for i = 1,9 do
  robot_arm: move_right()
end

for a = 1, 9  do
    robot_arm: grab()
  color = robot_arm: scan()
  print(color)
  print(a)
    if color == "red" then
        for i = 1, a-1 do
        robot_arm: move_right()
      end
      robot_arm: drop()
       for i = 1, a do
        robot_arm: move_left()
      end
  else
    robot_arm: drop()
      robot_arm: move_left()
   end
   
end