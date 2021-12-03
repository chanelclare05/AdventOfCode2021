#gamma rate x epsilon rate = power consumption

#Step 1 Find most common bit for each position across 1000 lines - gamma rate 
#Step 2 Opposite of gamma to find epsilon rate 
#Step 3 Translate to decimal 
#Step 4 gamma decimal x epsilon decimal 

# p diagnostics[0].split('').max_by {|i| diagnostics.count(i)} #finds the most occurent element in an array 


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


p gamma_rate
p epsilon_rate
p gamma_rate * epsilon_rate
p array.count