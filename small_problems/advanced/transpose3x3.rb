# This problem is slightly different from teh Tranpose problem I got before.
# So this time, it isn't about creating a column and returning the sum of this column
# It's about tranposing the entire array and returning the nested array tranposed.

# previous transpose problem if you need it.

=begin
def largest_column(nested_array)
  sums = []

  (0...nested_array[0].size).each do |index|
    columns = []

    nested_array.each do |subarray|
      columns << subarray[index]
    end
    sums << columns.sum
  end
  sums.max
end
=end

# Write a method that tranposes a nested array. That is, the columns are now the rows and the rows are now the columns.
# It's similar to the last problem, however I think this time it will be more useful to use map.

# Input: nested array
# Output: nested array tranposed (columns = rows and rows = columns)

# Rules:
  # Transpose a nested array so that each array's rows now equal the columns
  # Don't modify the original array

# Examples:

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Data Structures:
  # Like last time, it will be useful to iterate through each index first then take that index for each array
  # The only difference from last time is how we will transform the array.
  # The best idea is map, but it might get a little tricky since we're starting on each element.
  # Maybe we can map it, iterate from index to the size, then iterate again over the collection, returning
    # each thing in a collection. There's problem a better way, however.
  # Maybe just iterating from 0 to the first subarrays size then setting map equal to a variable would work.
  # Still need a columns array at the start for each number.

# Algorithm:
  # create an empty new_matrix array
  # Iterate from 0 to the size of the first subarray in the nested array - 1
  # create a columns array that is empty for every number
  # iterate through the matrix. add that index for the matricie to columns
  # After iterating, add the column to the new_matrix. Repeat until every element has been run through.


  def transpose(matrix)
    new_matrix = []

    (0...matrix[0].size).each do |index|
      columns = []

      matrix.each do |matricie|
        columns << matricie[index]
      end
      new_matrix << columns
    end
    new_matrix
  end

#   matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Mutating Tranpose!
  # Data Structures:
    # This time, we are mutating the array in place. That is, we want to use index assignment to replace each number
    # as we iterate through.
    # A little more complicated, but we should be seeing that the two arrays equal each other at the end.
    # The idea is to do the same thing and iterate from 0 to the size of the subarray - 1
    # we add the thing to columns
    # The only problem with that is we don't want to mutate the array while we're iterating over it.
    # SO the best thing to do is to take transpose from earlier, and mutate the array based on it.

    # Algorithm:
      # given an input of a nested array mutate it by tranposing it.
      # Iterate through the nested array
      # Iterate through the array transposed from earlier.
      # set the index assignment for each element in the nested array to the current element in the transposed array
      # that's it.

def transpose!(matrix)
  transposition = transpose(matrix)

  matrix.each_with_index do |_, index|
    matrix[index] = transposition[index]
  end

  matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose!(matrix)


p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

p new_matrix == matrix