
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

puts "count: #{increased_count}"


