# Write a method that takes a string of digits as an argument and returns the number of even numbered substrings that can be formed
# '1432' => '14', '1432', '4', '432', '32' '2' 6 substrings

# Input: string number, presumably with many digits
# even numbers array, still strings

# Rules:
  # Take all substrings of the input string and, if the substring converted to an integer is even, add it to the array
  # Return the number of even substrings that are possible.
  # substrings that occur more than once count, so you can have '4' and '4' => 2 substrings

# Examples:
# p even_substrings('1432') == 6
# p even_substrings('3145926') == 16
# p even_substrings('2718281') == 16
# p even_substrings('13579') == 0
# p even_substrings('143232') == 12

# Data Structures:
  # arrays
  # build substrings array
  # size of that array and return it

# Algorithm:
  # Build out the substrings array and add every even substring to that array
    # METHOD
      # create an empty array
      # iterate from 0 to the array size - 1 with index representing each number
      # iterate from 1 to the size of the array - index with length representing eac hnumber
      # add the slice of the string to the array if, converted to an integer, it is even.
      # return the array

  # Return the size of this array

def build_even_substrings(digits)
  even_substrings = []

  (0...digits.size).each do |index|
    (1..digits.size - index).each do |length|
      even_substrings << digits[index, length] if digits[index, length].to_i.even?
    end
  end
  even_substrings
end

def even_substrings(digits)
  build_even_substrings(digits).size
end


p even_substrings('1432') == 6
p even_substrings('3145926') == 16
p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12