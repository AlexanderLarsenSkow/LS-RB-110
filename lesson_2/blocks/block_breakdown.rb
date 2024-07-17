# Break down what is happening in this code example.

n = [[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# => 1 
# => 3

p n # => [1, 3]


# Breakdown: 
# map is invoked on the array object of subarrays. It returns a new array object [1, 3] based on the return value of the block.
# The block is invoked on each subarray in the main array and returns the first element of both subarrays.
# On line 4, #first is invoked on each subarray and that return value is passed into the puts method, outputting 1 and 3.
	# The return value of this expression is nil, but this does not affect the block because this is not returned.
# On line 5, #first is again invoked on each subarray. Because this is the final line of the block, The return value 
	# of this expression is also the return value of invoking #map on the main array.
# The new array is [1, 3]
