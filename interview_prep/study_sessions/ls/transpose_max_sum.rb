# Transpose Max Sum

=begin
Given a grid of values represented by an array of arrays, e.g.:
[1, 2, 3],
[4, 5, 6],
[7, 8, 9]

Return the largest sum of a column of values in the grid.
In this example, the largest sum is 18.

a = [[1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]

largest_column(a) == 18

b = [[1, 2, 3, 4],
    [5, 6, 7, 8]]

largest_column(b) == 12

c = [[1, 0, 0],
     [5, 8, 10],
     [3, 5, 1]]

largest_column(c) == 13
=end

# Input: array of arrays
# Output: greatest sum of one of the columns [0], [1]

# Rules:
  # arrays are alwasy equal size
  # Return the greatest sum from the columns
  # taking everyrom  number feach column, summing them for each column, and returning the greatest value.

# Data Structures:
  # Arrays
  # intermediary array for summing each value
  # iterate through the nested array, now we're on the lower level with arrays
  # iterate again, index 0? then we add every element at the 0 index in each array
  # take the value, add it to the intermediary array, then sum the value. Place teh sum in a return array. There should be the same number of sums as colums
  # take the max from teh return array

  # c = [[1, 0, 0], .each do |array|
  #    [5, 8, 10],
  #    [3, 5, 1]]

  # 0...upto(array.size) do |index|

  # so the current issue is that when I use index it iterates only through the current array. So I need to take every element at index 0 from each array and add that to columns array

  # iterate from 0, iterate through each array
  # 0 |index|
  # array.each do |number|
  # array[0]
  # before going to index 1, we add teh every element at index 0 to the columns array, sum it, and add it to column sums


 # Algorithm:
  # Create an empty result column sums array
  # create an colum array to sum each colum
  # iterate through the nested array
  # after iterating, I want to iterate from the 0th index to the last index.
  # take each element at each index, add it to the column array
  # sum the column array and add this value to teh column sums arraay
  # Return the max of column sums


# [[1, 2, 3],
# [4, 5, 6],
# [7, 8, 9]]

 def largest_column_first_try(nested_array)
  column_sums = []

  nested_array.each do |array| # [[1, 2, 3],
    columns = []
    (0...array.size).each do |index| # 0
      array.each do |_|
        columns << array[index]
      end
       column_sums << columns.sum
    end
  end
    column_sums
  #column_sums
 end

 # Final Solution:

# Data Structures:
  # Array
  # Iterating numbers from 0 to the array size - 1
  # for every number we want to iterate thorugh every array and add each element at that location to the columns array
  # before moving on to the next number, we should add to the array
  # arr 0 + arr1 0 + arr2 0
  # arr 1 + arr1 1 + arr2 1
  # arr 2 + arr1 2 + arr2 2

  # before moving onto the next number, put the same in the sums array

  # difference between the size of the nested array and the subarrays sometimes. So you need to iterate through
  # iterate from 0 to the nested_array size, this is index1
  # how do we get teh size of each subarray? This is a problem. Have to iterate through

# Algorithm: above

# find subarray_size METHOD
  # iterate through the nested_array
  # find the size of one nested array
  # return this value

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


  a = [[1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]

p largest_column(a) == 18

b = [[1, 2, 3, 4],
    [5, 6, 7, 8]]

p largest_column(b) == 12

c = [[1, 0, 0],
     [5, 8, 10],
     [3, 5, 1]]

p largest_column(c) == 13
