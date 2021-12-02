def day1_part1

  file = File.open("day1.txt")
  depth_array = file.readlines.map(&:to_i)

  count = 0
  i = 0 
  while i < depth_array.length - 1
    if depth_array[i] - depth_array[i+1] < 0 
      count += 1
      i += 1
    else 
      i += 1
    end 
  end 
  puts "The answer for day1, part 1 is #{count}"
end 


day1_part1
