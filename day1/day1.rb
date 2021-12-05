require 'byebug'

#part 1 
def find_depth
  input = File.read('data.txt').split.map(&:to_i)
  increased_count = 0
  i = 0 

  while i < input.length - 1
    if input[i] - input[i+1] < 0 
      increased_count += 1
      i += 1
    else 
      i += 1
    end 
  end 
  puts "part 1: #{increased_count}"
end 

#part 2 
def find_sliding_depth
  input = File.read('data.txt').split.map(&:to_i)
  count = 0
  i = 0 
  while i < input.length - 3
    if input[i] + input[i+1] + input[i+2] < input[i +1] + input[i+2] + input[i+3]
      count += 1
      i += 1
    else 
      i += 1
    end 
  end 
  puts "part 2: #{count}"
  #Alternative solution -> puts input.each_cons(3).map(&:sum).each_cons(2)count { |a, b| b > a }
end 

find_depth
find_sliding_depth
