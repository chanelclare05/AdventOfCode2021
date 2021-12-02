
depth_array = File.read("data.txt").split.map(&:to_i)

increased_count = 0
index = 0 

while index < depth_array.length - 1
  if depth_array[index] - depth_array[index+1] < 0 
    increased_count += 1
    index += 1
  else 
    index += 1
  end 
end 

puts "The answer for day 1, part 1 is #{increased_count}"


# puts depth_array.each_cons(2).count { |a, b| b > a }

