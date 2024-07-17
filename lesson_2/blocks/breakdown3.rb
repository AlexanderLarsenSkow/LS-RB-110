new_arr = [[1, 2], [3, 4]].map do |arr| # return value
  arr.map do |num| # return value 
    num * 2 # return value 
  end
end

p new_arr # => [[2, 4], [6, 8]]

# local variable new_arr is assigned to reference the return value of invoking map on an
		# array of subarrays (containing integers) on line 1,
# map is invoked on the outer array object, and its return value of [[2, 4], [6, 8]] is referenced by new_arr
# Inside the block, #map is invoked on each subarray. The return values are [2, 4] and [6, 8] for each invocation on the subarrays.
		# This return value is used by the outer map invocation.
# Inside the inner block, the * method is invoked on each number in the subarrays with 2 as an argument. This doubles
		# every number and is the return value of the block. It is used for the map invocations, and its return value is passed up
# as the instructions for transformation with the invocation of map on the outer array.