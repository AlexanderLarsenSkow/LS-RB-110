# Solve 6 with Array #each_with_object or reduce


def running_total(array)
	current_total = 0
	array.each_with_object([]) do |number, result_arr| 
		current_total += number
		result_arr << current_total
	end 
end 

p running_total([1, 2, 3])

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
