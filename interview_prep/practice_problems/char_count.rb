# PEDAC

# Understanding the Problem:
  # Input: array of strings with all lowercase characters
  # Output: Should be an array of characters that appear in every string in the input array

  # Expicit Requirements:
    # Return an array of characters that appear in every string in an input array.

# Examples:
  # ['bella', 'lable', 'roller'] # => ['e', 'l', 'l']
  # ['rock', 'soak'] # => ['o', 'k']

# Data Structure:
  # Arrays
  # Iterate through and split strings in to subarrays of characters if needed.
  # Can iterate through the characters to check if a character is in every string.
  # all? on substrings, so if every array has the char then place the character in the common_characters array

# Algorithm:
  # create common_chars array
  # Create character variable
  # Iterate through the array and set character var equal to char
  # Then check this character to see if it's in every element.
  # If every string has the character, place the character in the characters array

  # What do we do if there are multiple same characters?
    # Iterate through the common_characters array
    # If the count of that element is greater than 1 in every string in side the input array,
    # Add that character again to common_characters for each number of characters in the input array

  # Return the array
  
# Code

def common_chars(array)
  common_characters = []
  char_count = 0

  array.each do |string|
    string.each_char do |char|

      if array.all? do |string|
        char_count = string.count(char)
        char_count > 0
      end
        common_characters << char until common_characters.count(char) == char_count
      end
    end
  end
  common_characters
end

p common_chars(['roooock', 'sooooak']) #== ['o', 'k']
p common_chars(['bella', 'lable', 'roller']) # => ['e', 'l', 'l']