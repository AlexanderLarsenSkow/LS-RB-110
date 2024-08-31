# Given 2 strings, check to see if 2 strings contain any of the same substrings.
# substrings have to be longer than 1 character
# Return true if they both include the same substrings, false otherwise

# Input: 2 string objects
# Output: true or false boolean depending on if they share a substring

# Explicit Rules:
  # Substrings must be 2 characters or greater
  # If the 2 strings share one or more substrings, return true
  # If the 2 strings do not, return false.
  # casing doesn't matter

# Examples

# p substring_test('Something', 'Fun') == false
# p substring_test("Something", "Home") == true
# p substring_test("Something", '') == false
# p substring_test("BANANA", "banana") == true
# p substring_test('test', 'lilt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true


# Data Structures
  # 'abc' => ['ab', 'abc', 'bc']
  # Arrays
  # Definitely want to build an array of substrinsg greater than 2 characters
  # Then we want to check if both strings have the substring - if both substring arrays have the same substring, return true
  # If they don't have any of same substrings, then we return false.
  # We also need to upcase or downcase these results so that we can test equality.
    # when building the subarrays, downcase everything.

  # any? any substring is included in the other array, then we automatically return true

# Algorithm:
  # build substrings for both strings
    # METHOD
      # input: string
      # build an empty array
      # iterating from 0 to the size of the array - 1, creating a variable index to represent each index number
      # iterate again from the index to the size of the array - 1 with length variable
      # Taking a range of the string input and adding it to the empty array
      # Return the empty array

  # Then we use any? on the first subarray to test if they share a substring
  # If yes, return true
  # If no, return false.

def build_substrings(string)
  substrings = []

  (0...string.size).each do |index|
    ((2)..(string.size - index)).each do |length|
      substrings << string[index, length].downcase
    end
  end
  substrings
end

def substring_test(string1, string2)
  substrings1 = build_substrings(string1)
  substrings2 = build_substrings(string2)

  substrings1.any? { |substr| substrings2.include?(substr) }
end

p substring_test('Something', 'Fun') == false
p substring_test("Something", "Home") == true
p substring_test("Something", '') == false
p substring_test("BANANA", "banana") == true
p substring_test('test', 'lilt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true