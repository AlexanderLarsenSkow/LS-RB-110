# Write a method that takes a non-empty string value.
# It will have all lowercase letters
# the method should return the length of the longest vowel substring
# vowels include a i e o u

# Input: non empty string
# Output: integer value of the length of the longest vowel substring

# Question: can the subtring only contain vowels?
# Yep

# Rules:
  # Return teh length of the longest substrings of vowels in a given string
  # Vowels include a i e o u
  # do not use substrings that include consonants

# Examples:
  # p longest_vowel_substring('cwm') == 0 # no vowels
  # p longest_vowel_substring('many') == 1 # 1 vowel
  # p longest_vowel_substring('launchschoolstudents') == 2 # au, oo
  # p longest_vowel_substring('eau') == 3 # eau
  # p longest_vowel_substring('beauteous') == 3 # eau
  # p longest_vowel_substring('sequoia') == 4 # uoia
  # p longest_vowel_substring('miaoued') == 5 # iaoue

# Data Structures:
  # Arrays
  # Create an array of all substrings from the given string
  # Every substring should be 1 char or longer
  # After this, we select the substrings that only have vowels -
    # ab ['a', 'ab', b] => ['a']
  # Then we take max_by the length and return the max in the final method

# Algorithm:
  # create a VOWELS constant array
  # Build all substrings
    # METHOD
      # create an empty substrings array
      # iterate from 0 to the size of the array - 1 with index repping the numbers
      # iterate from 1 to the size of the array - the index with length repping these numbers
      # add each slice from index and length to the substrings array
      # return substrings

  # Select all vowel substrings
    # METHOD
      # Iterate over the substrings with select
      # Inside the block, convert each substr into an array of chars and check if all chars are vowels
      # only return the chars that are vowels in the final array

  # MAIN METHOD
    # take the max_by length of the vowel substrings array and return the longest substring.


VOWELS = ['a', 'e', 'i', 'o', 'u']

def build_substrings(string)
  substrings = []

  (0...string.size).each do |index|
    (1..string.size - index).each do |length|
      substrings << string[index, length]
    end
  end
  substrings
end

def select_vowel_substrings(substrings)
  substrings.select do |substr|
    substr.chars.all? { |char| VOWELS.include?(char) }
  end
end

def longest_vowel_substring(string)
  vowel_substrings = select_vowel_substrings(build_substrings(string))

  return 0 if vowel_substrings.empty?
  vowel_substrings.max_by { |substr| substr.length }.length
end

p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5