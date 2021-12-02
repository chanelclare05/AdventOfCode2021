def day1_part2

  file = File.open("day1.txt")
  depth_array = file.readlines.map(&:to_i)

  #file = File.read('day1.txt).split.map(&:to_i)

  count = 0
  i = 0 
  while i < depth_array.length - 3
    if depth_array[i] + depth_array[i+1] + depth_array[i+2] < depth_array[i +1] + depth_array[i+2] + depth_array[i+3]
      count += 1
      i += 1
    else 
      i += 1
    end 
  end 
  puts "The answer for day1, part 2 is #{count}"
  
  #Alternative solution
  # puts depth_array.each_cons(3).map(&:sum).each_cons(2)count { |a, b| b > a }

end 


day1_part2