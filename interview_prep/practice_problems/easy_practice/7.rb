# Write a method that takes an array of integers as an arguemtn and returns the number of identical pairs in that array
# [1, 2, 3, 2, 1] has 2 identical pairs => 1, and 2

# If the array if empty or contains 1 value, return 0

# count each pair once:
  # for instance, [1, 1, 1, 1] there are two equal pairs here.

# Input: array of integers
# Output: integer representing the number of identical pairs in the array

# Rules:
  # Return the number of identical pairs
  # Count identical pairs once each [1, 1, 1, 1] has 2 pairs
  # Return 0 if only 1 value or empty array

# Examples:
  # p pairs([3, 1, 4, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]) == 3 #
  # p pairs([2, 7, 1, 8, 2, 8, 1, 8, 2, 8, 4]) == 4 # many duplicates
  # p pairs([]) == 0 # empty
  # p pairs([23]) == 0
  # p pairs([997, 997]) == 1
  # p pairs([32, 32, 32]) == 1
  # p pairs([7, 7, 7, 7, 7, 7, 7]) == 3

# Data Structures:
  # Arrays
  # My first idea is to do what I did last time and create a nested array of pairs.
  # However, for example, for [1, 1, 1, 1] it would look like this : [1, 1], [1, 1], [1, 1], [1, 1]
    # So there are too many versions. Once we use a number in a pair, we need to not count it again.
  # [1, 2, 2] should return 1
  # The idea would be to iterate through the array and add 1 to the count if there is equality between values.
  # Again, the problems start with multiple duplicates. You might add too many to the count.

  # New idea:
    # add all identical pairs into an idenitcal pairs array, take the size of this array. That could work.
    # so how to add values into the identical pairs, and add the correct number?
    # could create a count variable. If the count is 4, there should be 2 versions in the new array.
    # If the count is 3 or below, there should be 1. 6 copies, 3 pairs. 8 copies, 4 pairs


# Algorithm:
  # First, we need to create an array of identical pairs
    # identical PAIRS METHOD
      # create an empty array identical pairs
      # create a variable count
      # Iterate over the input array with num1 and index1 as variables
      # Iterate over the input array again with num2 and index2 as variables

      # if the count of the number in the array is greater than 1, add that pair to a subarray
      # This may need to be a METHOD
        # COUNT logic
          # Determining the count.
          # We are taking the count of numbers in the input array
          # If there are 3 identical numbers, we divide by 2: 1 pair
          # 4: 2, 5: 2, 6: 3, 7: 3. So we create a count variable to check this.
          # HOWEVER, we are creating a nested array, so we can't check the count of the array here.
            # we have to check something else inside the method.
            # Check that the count of the pair is equal to the count variable divided by 2 LOL

      # add the subarray to the identical pairs array
      # Return the array

  # Take the method, return the size


def identical_pairs(int_array)
  identical_pairs = []

  int_array.each_with_index do |num1, index1|
    int_array.each_with_index do |num2, index2|
      count = int_array.count(num1)
      
      if num1 == num2 && index1 != index2
        pair = [num1, num2]
        identical_pairs << pair unless identical_pairs.count(pair) == count / 2
      end
    end
  end
  identical_pairs
end

# p identical_pairs([1, 1, 2, 2]) == [[1, 1], [2, 2]]
# p identical_pairs([1, 1, 1, 1, 1, 1])
# p identical_pairs([7, 7, 8, 8, 5, 4, 4, 3, 1, 3, 1, 2, 6])

def pairs(int_array)
  identical_pairs(int_array).size
end

p pairs([3, 1, 4, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]) == 3
p pairs([2, 7, 1, 8, 2, 8, 1, 8, 2, 8, 4]) == 4
p pairs([]) == 0
p pairs([23]) == 0
p pairs([997, 997]) == 1
p pairs([32, 32, 32]) == 1
p pairs([7, 7, 7, 7, 7, 7, 7]) == 3