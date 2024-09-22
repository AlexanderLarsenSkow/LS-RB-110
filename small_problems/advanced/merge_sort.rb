# Input: array
# Output: merge sorted array

# Rules:
  # sort and merge an array of values based on merge sort
  # recursive sorting that creates partitions of the array
    # splitting in half
  # then puts the array back together by sorting.
  #

# Examples:
# merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# merge_sort([5, 3]) == [3, 5]
# merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# merge_sort([9, 2, 7, 6, 8, 5, 0, 1]) == [0, 1, 2, 5, 6, 7, 8, 9]

# merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# Data Structures:
  # partition obviously
  # need to continuously partition until every element is in its own subarray
  # wtf is the base case for that?
  # base case is if it equals itself sorted
  # right... so we want to parititon each piece continuously then add the sorted pieces back together...
    # how tf do I do that?
  # base case could be that the partition includes an empty array.

  # partion with index. Take hte index / 2
  # if the partition includes an empty array
    # call merge on the variable from partition.
  # else, call the method again

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

def merge_sort(array)
  return array if array.size == 1

  subarr1, subarr2 = array.partition.with_index do |_, index|
    index < array.size / 2
  end

  subarr1 = merge_sort(subarr1)
  subarr2 = merge_sort(subarr2)
  
  merge(subarr1, subarr2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort([9, 2, 7, 6, 8, 5, 0, 1]) == [0, 1, 2, 5, 6, 7, 8, 9]