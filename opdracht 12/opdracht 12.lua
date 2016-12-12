require 'robot_arm'
robot_arm: random_level(1)
robot_arm.speed = 0.99
move = true
while move == true do
    robot_arm: grab()
end
  color = robot_arm:scan()
    print(color)
  if color == nil then
      move = false
  else
      for i =1, 1 do
    robot_arm: move_right()
    end
    robot_arm: drop()
    for i = 1, 1 do
    robot_arm: move_left()
     end
end
