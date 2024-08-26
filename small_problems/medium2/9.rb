# Bubble Sort

# PEDAC

# Problem:
	# Expected Input: array
	# Expected Output: sorted, mutated

	# Rules:
		# Explicit:
		  # Sort an array by swapping each value during iteration if one is greater than the element next to it.
		  # If the element at the smaller index is greater in value, swap the values.
		  # This will mutate the array

		# Implicit:
		  # index, index2 is equal to index + 1

# Examples:
  # array = [5, 3]
  # bubble_sort!(array)
  # array == [3, 5]

# Data Structure:
  # Arrays

# Algorithm:
  # Manually iterate through
  # Stop iterating when the second index is equal to the size of the array
  # set the index equal to 0
  # set the second index equal to index + 1
  # if the element at the first index is greater than the element at the second index, swap the elements.
  # return the mutated array

# Code:

def bubble_sort!(array)
  index = 0
  interim_el = 0
  iteration_count = 0

  loop do
    break if iteration_count == 10
    index2 = index + 1

    if index2 >= array.size
      iteration_count += 1
      index = 0
      index2 = index + 1
    end

    element1 = array[index]
    element2 = array[index2]

    if element1 > element2
      interim_el = element1
      array[index] = element2
      array[index2] = interim_el
    end
    index += 1
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array2 = [6, 2, 7, 1, 4]
bubble_sort!(array2)
p array2 == [1, 2, 4, 6, 7]

array3 = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array3)
p array3 == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)