# Solving Odd Lists with 0 index positions


def oddities(array)
	odd_items = []
	
	array.each_with_index do |el, index|
		odd_items << el if index.even?
	end
	odd_items
end 

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]