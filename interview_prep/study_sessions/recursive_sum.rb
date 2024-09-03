#Problem
# I need to write a method that returns the sum
# Of all numbers in a nested array
# Don't use flatten.

# Write a method that takes the sum of every integer in an extremely nested array.
# Don't use flatten

# Input: array of arrays and integers, unflattened
# Output: total sum

# Rules
  # take the sum of every integer in a nested array
  # don't use flatten

#Example/Test Cases
# puts sum_of_nested_array([1, [2, 3], [4, [5, [1,5]]]]) # 21
# puts sum_of_nested_array([10, [20, 30, [40]], 50]) # 150

# Data Structures:
  # Arrays
  # Use recursion here.
  # If the current element is an array, call the method again
  # If the current element is an integer, add its value to a variable
  # Return the variable

# Algorithm:
  # Create a variable total equal to 0
  # Iterate through the array
  # If the current element is an array, call the method again
  # else, add teh current element to total
  # Return total at the end

def sum_of_nested_array(nested_array)
  sum = 0

  nested_array.each do |element|

    if element.class == Array
      sum += sum_of_nested_array(element)

    elsif element.class == Integer
      sum += element
    end
  end
  sum
end

p sum_of_nested_array([1, [2, 3], [4, [5, [1,5]]]]) # 21
p sum_of_nested_array([10, [20, 30, [40]], 50]) # 150