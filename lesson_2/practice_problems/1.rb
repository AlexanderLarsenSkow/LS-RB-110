# Order this array of numeric strings by descending order # => 11 first lol
	# Tools:
		# sort_by or sort
		# to_i

arr = ['10', '11', '9', '7', '8']

sorted_arr = arr.sort do |a , b|
	b.to_i <=> a.to_i
end 

p sorted_arr # => ['11', '10', '9', '8', '7']