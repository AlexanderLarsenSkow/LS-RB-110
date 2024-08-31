# Write a method that takes an array of integers and returns an index that splits up two parts of the array based on
# the numbers sums equaling each other.
# For example:
  # [1, 2, 3, 4, 3, 2, 1] => returns 3, because this is the index position that splits 1, 2, 3 and 3, 2, 1, whose sums are equal.

# So we need to take left and right sides of each index position.

# So in array [1, 2, 3] index 0 left side is [] and right side is [1, 2, 3]
# for index 1 left side is [1] and [3] is right.
# for index 2 left side is [1, 2] and [] is right.
  # this would return - 1 because no side is equal.

# Input: array of integers
# Output: integer value based on the index position of splitting equal sides in an array.
  # return - 1 if there is no index position that gives equality

# Rules:
  # Splitting an array of integers by an index position (this does not include the number at this index), check to see if
    # the right and left sides have equal sums. If they do, return the index position that split the array.
  # If there is sum equality, return - 1
  # Remember, the integer at the index that splits is NOT included in the left or right side.

# Examples:
  # p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
  # p find_even_index([1, 100, 50, -51, 1, 1]) == 1
  # p find_even_index([1, 2, 3, 4, 5, 6]) == - 1
  # p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
  # p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
  # p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

# Data Structures
  # Arrays
  # The hardest part here is dealing with splitting the array based on an index position.
  # Iterate through the indicies in the array and partition it based on that index.
  # Only issue from this point is that now the element at that position is in the 2 sides.
  # At this point, if the sums of both sides are equal, we can break out of the method and return the index.
  # If we iterate through the entire thing, we just return - 1 at the end

  # The problem I'm having right now is I'm selecting out more elements.
  # So how can I get rid of the element at the index position, but only that element?
  # Remove the first index LOL

  # If you get stuck, GO BACK to the algorithm.
  # THis isn't about trying brute force it in the code. That's not how we solve this thing.
  # I sat and struggled on this for a good 20 minutes before I went back to the algorithm and I got it in about 20 seconds LOL.
  #

# Algorithm:
  # Iterate from the first index to the last index in the array
  # take the partition at that index position: left side should be less than the index and right side greater than
  # from here, delete the element at the 0 index in the right side array as it is at the split position in the input array.
  # If the sums of both sides are equal, return the index. If not, continue iterating.
  # Return - 1 at the end


  def find_even_index(int_array)
    return int_array.sum if int_array.empty?

    int_array.each_with_index do |_, index|
      left_side, right_side = int_array.partition.with_index { |_, index2| index2 < index }
      right_side.delete_at(0)

      return index if left_side.sum == right_side.sum
    end
    - 1
  end


  p find_even_index([1, 2, 3]) == - 1
  p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
  p find_even_index([1, 100, 50, -51, 1, 1]) == 1
  p find_even_index([1, 2, 3, 4, 5, 6]) == - 1
  p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
  p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
  p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
  p find_even_index([]) == 0


