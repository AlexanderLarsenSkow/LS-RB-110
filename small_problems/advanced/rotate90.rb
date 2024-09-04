# Write a method that rotates a nested array 90 degress:
  # That is, every row becomes a new column
  # Row 1 becomes column 3
  # Row 2 becomes column 2
  # row 3 becomes column 1

# Input: Nested array
# Output: nested array rotated 90 degrees, new array

# Rules:
  # Rotate the array by 90 degrees so tha the values are now different
  # Row 1 is now column 3
  # Row 2 is now column 2
  # Row 3 is now column 1

# 1  5  8
# 4  7  2
# 3  9  6

# 3  4  1
# 9  7  5
# 6  2  8

# looking at this example, it's a bit different from the previous problem.
# THe main idea is that it's a reverse problem from before.
# SO we want to take these rows, and then column them out.
# take each row at the element
# put each element in a new array: ah, here's the problem. they are different arrays xd.

 # we need to take certain values. For the first array, for example, we need
  # 3 4 1. that is the first column, so every array at [0]

# Second array, we need the second column backwards, at array[1]

# Third array, we need column 3 backwards
  # okay this makes sense

# Examples:

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

# Data Structures:
  # Arrays
  # Since we need to take backwards columns, what we can do is iterate from the subarray size
  # and take each element down to 0 from that highest value.
    # that is, column << arr[2][0], arr[1][0], arr[0][0]
    # So we need to iterate through the arrays backwards.
    # iterate from the size - 1 to 0
    # how do I get the same number for the second index?
      # on 2, index 2 == 0
      # on 1, index 2 == 1
      # on 0, index 2 == 2

      # row << matrix[2][0]
      # row << matrix[1][0]
      # row << matrix[0][0]

      # row << matrix[2][1]
      # row << matrix[1][1]
      # row << matrix [0][1]

      # row << matrix [2][2]
      # row << matrix [1][2]
      # row << matrix [0][2]

    # first thing is fine
    # now we need to iterate through the array and take each element at the current index

  # Algorithm:
    # create an empty rotated90 array
    # iterate from 0 to the size of the subarray - 1, this is the col index
    # iterate from the

  def rotate90(matrix)
    rotated90 = []

    (0...matrix[0].size).each do |col_index|
      row = []

      (matrix.size - 1).downto(0) do |row_index|
        row << matrix[row_index][col_index]
      end

      rotated90 << row
    end
    rotated90
  end



    matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
