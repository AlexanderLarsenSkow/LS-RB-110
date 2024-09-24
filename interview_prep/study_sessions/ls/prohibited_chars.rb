# Write a function that finds all substrings that doesn’t contain any of the prohibited characters given in the second argument. -- Alex

# Input: 2 strings: 1 a full string and 1 a smaller one
# Output: all substrings that don't contain prohibited chars => 2nd input string

# Rules:
  # Given 2 strings, one a test string and one a string of prohbitied characters, return all substrings from the first string that don't include chars from the second prohibited chars

# Examples:
# Write a function that finds all substrings that doesn’t contain any of the prohibited characters given in the second argument. -- Alex

# Test cases
# puts find_valid_substrings("test", "t").inspect # [ 'e', 'es', 's' ]
# puts find_valid_substrings("hello", "el").inspect # [ 'h', 'o' ] # no substrings with e or l h o
# puts find_valid_substrings("12345", "3").inspect # [ '1', '12', '2', '4', '45', '5' ] #
# puts find_valid_substrings("abcde", "xyz").inspect
# # [
# #   'a', 'ab', 'abc', 'abcd', 'abcde', 'b',
# #   'bc', 'bcd', 'bcde', 'c', 'cd', 'cde',
# #   'd', 'de', 'e'
# # ]


# Data Structures:
  # Build out all substrings from the first string
  # If a substring contains any chars from the second string, don't reject those chars
  # return the final array after rejecting

# Algorithm:
  #BUILD SUBSTRINGS
  # iterate from 0 to the size of the string - 1, this is index
  # iterate from index to the size of the string - 1
  # take the range of values from the string and add it to an array
  # return the array

  # MAIN METHOD
    # reject all substrings that contain any characters from the second string
      # for each substr, check if it contains any chars from string 2

def build_substrings(string)
substrings = []

  (0...string.size).each do |index|
    (index...string.size).each do |index2|
      substrings << string[index..index2]
    end
  end
  substrings
end

# p build_substrings('abc')

def find_valid_substrings(string, bad_chars)
  build_substrings(string).reject do |substr|
    bad_chars.chars.any? { |bad_char| substr.include?(bad_char) }
  end
end

# Test cases
puts find_valid_substrings("test", "t").inspect # [ 'e', 'es', 's' ]
puts find_valid_substrings("hello", "el").inspect # [ 'h', 'o' ]
puts find_valid_substrings("12345", "3").inspect # [ '1', '12', '2', '4', '45', '5' ]
puts find_valid_substrings("abcde", "xyz").inspect
# [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 'b',
#   'bc', 'bcd', 'bcde', 'c', 'cd', 'cde',
#   'd', 'de', 'e'
# ]