# Write a method that takes a string as entirely numeric digits and computes the greatest possible product of four consecutive digits
  # in the string

# The argument always has more than 4 digits

# Input: numeric string with at least 4 digits
# Output: the greatest possible product of 4 of these digits, in integer form

# Rules:
  # Return the product of 4 consecutive digits in this problem
  # Assume that every input string will be at least 4 digits long

# Examples:
# p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
# p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
# p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
# p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6

# Data Structures:
  # Arrays
  # Build out substrings/subarrays? that are at least 4 possible digits long.
    # no need to worry about substrings that are shorter than this.
  # After we have our substrings, we can convert them to an array of integers, and take the product of this.
    # This would be a good time for reduce(:*)
    # then we take the max of this array.
    # convert to an integer than call digits then we reduce later

# Algorithm:
  # build out all possible subarrays that are 4 characters long only.
  # METHOD
    # create an array
    # iterate from 0 to the array size - 4, this is the index
    # take the slice from index to 4, converted to an integer and placed in a digits array, and add it to the array
    # return the array

  # MAIN METHOD
    # Call map on the substrings array and convert each element to an integer and reduce the element to the product.
    # now we take the max of this products array and return the max

def build_subarrays(number)
  subarrays = []

  (0..number.size - 4).each do |index|
    subarrays << number[index, 4].to_i.digits.reverse
  end
  subarrays
end

def greatest_product(number)
  subarrays = build_subarrays(number)
  subarrays.map { |subarray| subarray.reduce(:*) }.max
end

p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 9