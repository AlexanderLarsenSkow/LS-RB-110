# Write a method that takes a nonempty string as an argument and returns an array with an integer and string
# array = t
# string = s
# integer = k
# s == t * k

# Input: string
# Output: array with substring at index 0 and integer, which is a multiplier, at index 1

# Rules:
  # Given a string argument, return an array of a string and integer
  # The string should be a substring in the string argument, and the integer is the number of times it should be multiplied
    # to equal the original string.
  # the substring in the array should be the shortest possible substring

# Examples:

# p repeated_substring('xyzxyzxyz') == ['xyz', 3]
# p repeated_substring('xyxy') == ['xy', 2]
# p repeated_substring('xyz') == ['xyz', 1]
# p repeated_substring('aaaaaaaa') == ['a', 8] # shortest possible, 'aa' * 4, 'aaaa' * 2, 'aaaaaaaa' * 1
# p repeated_substring('superduper') == ['superduper', 1]

# Data Structures:
  # arrays
  # string multiplication
  # building subarrays
  # 2 qusetions:
    # how to get the number, beyond just random iterating?
      # iterate from 0 to the string size
    # how do we get the shortest possible substring, make it equal to a new substring if that substring can evenly fit into the
      # original string

    # substrings array
      # 'abc' ['a', 'ab', 'abc']
      # only need to iterate over the length because we only want the possible substrings at the 0 index.
      # iterate from 0 to the size of the string and, if multiply the current number by the substring, we get the string,
      # put the number and substring in the return array

# Algorithm:
  # build every substring from index 0 in an array from the input string
    # METHOD
      # create an empty array
      # iterate from 1 to the size of the array, this is the length
      # take the slice from 0 to hte length
      # add it to the array
      # return teh array

  # MAIN METHOD
    # create multiple array
    # Given the substrings array, iterate from 0 to teh size of the array - 1, this is the index
    # 0 is the index
    # iterate again from 1 to the size of the array - this is the multiplier
    # if the current slice can be multiplied by the current integer to equal the input string, add the string and multiplier to
      # the array
    # return the array

  def build_substrings(string)
    substrings = []

    (1..string.size).each do |length|
      substrings << string[0, length]
    end
    substrings
  end

  def repeated_substring(string)
    multiples = []
    good_strings = []
    result = []

    substrings = build_substrings(string)

    substrings.each do |substring|
      (1..substrings.size).each do |multiplier|
        
        if substring * multiplier == string
          multiples << multiplier
          good_strings << substring
        end
      end
    end
    shortest_substring = good_strings.min_by { |substr| substr.length }
    result.push(shortest_substring, multiples.max)
  end

p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]
