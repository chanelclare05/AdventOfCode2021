def day1_part1
  depth_array = File.read("data.txt").split.map(&:to_i)

  increased_count = 0
  index = 0 

  while i < depth_array.length - 1
    if depth_array[i] - depth_array[i+1] < 0 
      increased_count += 1
      i += 1
    else 
      i += 1
    end 
  end 
  puts "The answer for day 1, part 1 is #{increased_count}"
end 

# puts depth_array.each_cons(2).count { |a, b| b > a }


day1_part1
