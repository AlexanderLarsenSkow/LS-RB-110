# Write a method that takes an array of integers and returns the two numbers in the array that are closest in value.
# If pairs are equally close, return the pair that occurs first.

# Input: array of integers
# Output: array of 2 integers that are the closest in value from the input array

# Rules:
  # Given an array of integers, return the two integers that are closest to each other.
  # If pairs are equally close, return the first closest pair.

# Examples:
# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11] # => 15 and 11 are the closest
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27] # => 25 and 27 are the closest
# p closest_numbers([12, 22, 7, 17]) == [12, 7] # => 12 and 7 occur first so are returned.

# Data Structures:
  # Arrays
  # The first question is how do we check the distance between each pair
  # We could create subarrays of 2 in length, and simply return the first one that is the shortest... I'm not sure about that.
  # The idea might be to create an array of distances and take the minimum distance. Take the first pair that equals that value
    # when the bigger subtracts the smaller

  # So now, how do we compare each element against the other elements?
  # subarrays won't work because those are contiguous. These don't have to be contiguous in this case.
  # Think about the string scramble from earlier. How did we do that? I FORGOT LOL

  # sort won't work because they could be anywhere in the array.

  # Need to Choose an approach. My first instinct is to create an array of distances. Let's do that.

  # Notes:
    # A pair can be created from any random point, meaning non-adjacent pairs can be formed
    # We need to take the pair with the smallest difference between them
    # What if we create subarrays of all the different pairs, then minus the min from the max? Then we add those to the differences
    # array, and take the min from that. Return the pair that equals that min. That could work!

    # Data Structures for Pairs Method:
      # we start at 0 for sure, but how do we get, for example, 25 an 27 if they're in different places?
      # Can't iterate over like a typical subarray/substring method
      # [1, 2, 3, 4]

# Algorithm:
  # create an empty closest pair array
  # create a difference variable equal to 0
  # Iterate over the integers in the array
  # Iterate over the integers again
  # Set the difference equal to the current outer integer - the inner_integer
  # Don't reassign difference unless the new value is smaller than the old value.

  # for each pair, minus the min from the max and add to this value to the differences array
  # Take the min from differences

  # Now we know the smallest difference. It's time to take get the correct pair from that.
  # Iterate through the pairs array again and return the pair that equals this min
  # def get pairs
    # iterate over the numbers
    # Iterate over the numbers again
    # If the numbers equal the difference from the main method, return this value.

def subtract_min_from_max(num1, num2)
  [num1, num2].max - [num1, num2].min
end

def get_pair(int_array, difference)
  closest_pairs = []

  int_array.each do |num1|
    int_array.each do |num2|
      if subtract_min_from_max(num1, num2) == difference
        closest_pairs.push(num1, num2) unless closest_pairs.size >= 2
      end
    end
  end
  closest_pairs
end

def closest_numbers(int_array)
  difference = 0

  int_array.each do |num1|
    int_array.each do |num2|
      subtraction = subtract_min_from_max(num1, num2)

      if num1 != num2 && (subtraction < difference || difference == 0)
        difference = subtraction
      end
    end
  end
  get_pair(int_array, difference)
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 22, 7, 17]) == [12, 7]