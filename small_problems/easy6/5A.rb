# Reverse with each_with_object or reduce

def reverse(array) 
	array.each_with_object([]) do |element, array|
		array.unshift(element)
	end	
end 

array = [1, 2, 3, 4]

p reverse(array) == [4, 3, 2, 1]