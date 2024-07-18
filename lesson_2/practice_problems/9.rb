# Reorder the subarrays based on a descending order (From greatest to smallest)

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_subs = arr.map do |sub_arr|
	sub_arr.sort do |a, b| 
		b <=> a
	end
end 

p sorted_subs # => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]

