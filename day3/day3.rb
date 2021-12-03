diagnostics = File.read("data.txt").split.map(&:to_s)

gamma_rate = Array.new
epsilon_rate = Array.new

index = 0 
while index < 12
  array = Array.new
  diagnostics.each { |new_array| array << new_array[index] }
  most_common = array.max_by{|i| array.count(i)}
  gamma_rate << most_common
  index += 1
end 

gamma_rate.each { |element| 
    element == '0' ? epsilon_rate << '1' : epsilon_rate << '0' 
}

gamma_rate = gamma_rate.join('').to_i(2) 
epsilon_rate = epsilon_rate.join('').to_i(2) 


p gamma_rate * epsilon_rate
