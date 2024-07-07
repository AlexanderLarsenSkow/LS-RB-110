# Probably best to not mutate arrays as you iterate through them automatically hahahha

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift # 1 2 
end

p numbers # => []


array = [1, 2, 3, 4, 5, 6]

array.each do |num|
	puts num
	array.pop # => 4 3
end 

p array

numbers = [1, 2, 3, 4, 5]
numbers.each do |number|
  p number # => 1 2
  numbers.pop(1) # => 4 3
end

p numbers # => [1, 2]