require 'byebug'


# part 1
# gamma rate x epsilote rate = power consumption

def power_consumption
  diagnostics = File.read("data.txt").split.map(&:to_s) #the entire 

  gamma_rate = Array.new
  epsilon_rate = Array.new

  index = 0 
  while index < 12
    array = Array.new
    diagnostics.each { |line| array << line[index] }
    most_common = array.max_by{|i| array.count(i)}
    gamma_rate << most_common
    index += 1
  end 

  gamma_rate.each { |element| 
      element == '0' ? epsilon_rate << '1' : epsilon_rate << '0' 
  }
  gamma_binary = gamma_rate.join(' ')
  gamma_decimal = gamma_rate.join('').to_i(2) 
  epsilon_decimal = epsilon_rate.join('').to_i(2) 

  puts "power consumption: #{gamma_decimal * epsilon_decimal}"
end 

def life_support
  diagnostics = File.read("data.txt").split.map(&:to_s) #the entire 
  reducing_array = diagnostics

  index = 0 
  until reducing_array.count == 1
    array2 = Array.new
    reducing_array.each { |line| array2 << line[index]}
    if array2.count('1') > array2.count('0')
      most_common = '1'
    elsif array2.count('1') < array2.count('0')
      most_common = '0'
    else 
      most_common = '1'
    end 
    reducing_array = reducing_array.find_all {|line| line[index] == most_common}
    index += 1
  end 

  oxygen = reducing_array.join('').to_i(2)

  reducing_array = diagnostics
  index = 0 
  until reducing_array.count == 1
    array2 = Array.new
    reducing_array.each { |line| array2 << line[index]}
    if array2.count('1') > array2.count('0')
      most_common = '0'
    elsif array2.count('1') < array2.count('0')
      most_common = '1'
    else 
      most_common = '0'
    end 
    reducing_array = reducing_array.find_all {|line| line[index] == most_common}
    index += 1
  end 
  c02 = reducing_array.join('').to_i(2)

  puts "#{oxygen * c02}"
end 

power_consumption
life_support
