# Return an array that contains hashes that only contain even integers.
# Remove all odd integers.
# select on the hashes 
# all 


arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

even_numbered_array = arr.select do |hash|
	hash.all? do |_, value|
		value.all? do |num|
			num.even?
		end 
	end 
end 

p even_numbered_array 