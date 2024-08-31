# INput: array of integer values
# Output: all possible pairing within the array. Must include pairings that are not adjacent.

# Rules:
  # Create an array of subarrays where every subarray is a pairing of elements from the first array
  # Must include non-adjacent pairs

# Examples:
  # [1, 2, 3, 4] => [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]],

# Data Structures:
  # Arrays
  # Want to build out an inner array with the first integer then push in the second integer. Then we stop adding elements to this
    # array and add it to the final array.
  # It's going to be a little bit complicated iterating.

# Algorithm:
  # CREATE PAIRS METHOD
  # Create an empty pairs array
  # Iterate over the array and create var num1
  # Iterate over teh array again and create var num2
  # create an array literal with num1 as the only element
  # If num1 isn't equal to num2, add num2 to this array
  # add this array to the pairs array
  # Return pairs

  # Main Method Algorithm:
    # Use subtraction method max - min to determine mins
    # iterate over the pairs with map and transform into an array of differences
    # take the min difference
    # in the main method, iterate through the pairs and return the first pair that equals this difference.

def create_pairs(array)
  pairs = []

  array.each_with_index do |num1, index1|
    array.each_with_index do |num2, index2|
      pair = [num1, num2] if index1 < index2
      pairs << pair if pair
    end
  end
  pairs
end

def subtraction(pair)
  pair.max - pair.min
end

def find_min_difference(pairs)
  pairs.map { |pair| subtraction(pair) }.min
end

def closest_numbers(int_array)
  pairs = create_pairs(int_array)
  difference = find_min_difference(pairs)

  pairs.each do |pair|
    return pair if subtraction(pair) == difference
  end
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 22, 7, 17]) == [12, 7]