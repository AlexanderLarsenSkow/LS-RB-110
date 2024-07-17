# Break down this code example into understandable chunks.

my_arr = [[18, 7], [3, 12]].each do |arr|					# iterating structure
  arr.each do |num|																# iterating under the initial iteration
    if num > 5
      puts num
    end
  end
end

# => 18
# => 7
# => 12

# => [18, 7]
# => [3, 12]

p my_arr # => [[18, 7], [3, 12]]

# On line 3, #each is invoked on the outer array. It returns the same array it was invoked on and doesn't use the return value in
		# the block.
# On line 4, #each is invoked on each subarray, which returns each subarray, disregarding the return value of the block.
# From lines 5 - 7, if num > 5, the puts method is invoked with each number inside the subarrays as arguments. This returns nil
		# if the number is greater than 5. nil is the return value of the block but it is not used as #each ignores the block's 
		# return value.
		
		

