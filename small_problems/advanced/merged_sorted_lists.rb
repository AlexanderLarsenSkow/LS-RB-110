# Write a method that takes two arrays as arguments and merges them in the correct order.
# You cannot use sort on the result array. Build the array out one at a time in the right order.

# Input: two arrays of integers
# Output: one result array built from the smallest value to the greatest value

# Rules:
  # Create a sorted array from the integers in two arrays
  # Don't use sort on the result
  # build out the array one integer at a time
  # if one array is empty, return the other array

# Examples:
  # merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9] # standard
  # merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3] # duplicates
  # merge([], [1, 4, 5]) == [1, 4, 5] # empty array case
  # merge([1, 4, 5], []) == [1, 4, 5] # empty array case, nothing to compare to

# Data Structure:
  # arrays
  # need to iterate over the two arrays and compare each element.
  # Out of all integers, we want to put in the smallest current integer.
  # The challenge is that
    # if we iterate through one array and check if the current element is smaller than the other elements
    # essentially, we want to build out a method that continuously checks for the smallest possible element in each array
    # Then puts that in the result array.
    # Sounds a little like recursion

  # What do I want?
    # [1, 5, 9] [2, 6, 8]
      # [1]
      # [1, 2]
      # [1, 2, 5]
      # [1, 2, 5, 6]
      # [1, 2, 5, 6, 8]
      # [1, 2, 5, 6, 8, 9]

      # in all the examples, we already know that the arrays are already sorted. We could do this easily.
      # So, we're comparing each element in the current array against each element in the second array
      # So. If the current element is lower than all the elements in teh array, we put in the current element.
      # We might need to do this recursively or with a while loop.
      # while the size of the result array is less than the 2 input array sizes added together

    # so maybe two helpers?
    # one taht checks each element in the first against each element in the second
    # And another that checks each element in the second against eac helement in the first
    # taking increasingly smaller arrays since we'll be deleting at the index we took from.
    # So taking an index value as well.

  # Once that integer is used, we don't want to use it again. So maybe deleting at that index could help
  # dup for each element for each array maybe, so we don't mutate the input arrays

  # the only problem with this would be:
    # how does the program know which helper to use?

  # high level algorithm:
    # first create two copies of the input arrays so they don't get mutated
    # iterate through each element of the first array
    # check them against each element in the second.
    # If one the smallest element is smaller than each element in the second
      # return this number
      # delete the number from the array with delete_at

    # if none of the numbers are smaller than the numbers in the second array
      # this condition is the hard part


    # now we iterate through the second array first and check each element against teh first array
    # We stop iterating once both arrays are empty
    # return the result, which should be the sorted arrays



  # Algorithm:
    # Create copies of both of the input arrays.
    # create sorted_merge array

    # if statement:
      # if none of the elements in the current array are smaller than every element in the second array,
      # we switch the arguments around

        # none_smaller? METHOD
          # input: two input duplicated arrays
          # output: true or false boolean

          # return true if none of the elements in the first array are smaller than every element in the second

    # Call first helper that iterates over array 1 and checks against each element in array 2

      # METHOD checking array1 against array2
        # input: both duplicate input arrays
        # Output: smallest current number from 1 array

        # create number variable
        # iterate through array1
        # if every element array2 is greater than this current element,
        # set the number equal to the current integer
        # delete at this index
        # return the number variable

  # back in the main method, add the result from the helper to the sorted_merge array
  # break out of the loop when the sorted_merge array is the same size as the two array sizes added together

  def one_smaller?(first_arr, second_arr)
    first_arr.any? do |num1|
      second_arr.all? { |num2| num1 < num2 }
    end
  end

  def get_smallest!(first_arr, second_arr)
    smallest_number = 0

    first_arr.each_with_index do |num1, index|
      if second_arr.all? { |num2| num1 < num2 }
        smallest_number = num1
        first_arr.delete_at(index)
        break
      end
    end
    smallest_number
  end

  def merge(array1, array2)
    merged_sort = []

    return array2 if array1.empty?
    return array1 if array2.empty?
    new_array1 = array1.dup
    new_array2 = array2.dup

    while merged_sort.size < array1.size + array2.size

      if one_smaller?(new_array1, new_array2)
        merged_sort << get_smallest!(new_array1, new_array2)

      elsif one_smaller?(new_array2, new_array1)
        merged_sort << get_smallest!(new_array2, new_array1)
      end
    end

    merged_sort
  end

  p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9] # standard
  p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3] # duplicates
  p merge([], [1, 4, 5]) == [1, 4, 5] # empty array case
  p merge([1, 4, 5], []) == [1, 4, 5] # empty array case, nothing to compare to

