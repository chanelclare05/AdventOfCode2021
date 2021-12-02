
course = File.read("data.txt").split.map(&:to_s)

position = { :forward => 0 , :depth => 0 }

i = 0
while i < course.length - 1
  if course[i] == "forward"
    position[:forward] += course[i+1].to_i
  elsif course[i]  == "up"
    position[:depth] -= course[i+1].to_i
  else course[i]  == "down" 
    position[:depth] += course[i+1].to_i
  end 
  i += 1
end 

answer = position[:forward] *  position[:depth] 

puts position
puts answer