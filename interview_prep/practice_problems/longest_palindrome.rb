# Find the length of the longest substring in a given string that is the same in reverse.
# "I like racecars that go fast." => "racecar" => 7
# If the length of the input is 0, return 0.

  # Input: string
  # Output: substring length that is the longest palindrome in the string SO AN INTEGER

  # Rules:
    # Given a string, return the length of the longest substring that is a palindrome (itself reversed)
    # If the length of the input is 0, return 0
    # 1 letter palindromes are okay.

  # Examples:
    # p longest_palindrome("a") == 1
    # p longest_palindrome("aa") == 2
    # p longest_palindrome("baa") == 2
    # p longest_palindrome("aab") == 2
    # p longest_palindrome("baabcd") == 4

  # Data Structures:
    # Arrays
    # Push all palindromic substrings into an array
    # build an array of all substrings from the string
    # Take max_by and length of the greatest length.

  # Algorithm:
    # Create an empty palindromic substrings array
    # build a substrings array from 1
      # METHOD
        # create an empty substrings array
        # iterate from 0 to the - 1 the size of the string with index to represent each value
        # iterate from 1 to the size of the string - the index with length to represent this value
        # add the slice of the string from index, length to the substrings array
        # Return it.

    # Iterate through the substrings array and add each substring that is equal to itself in reverse to the palindrome array
    # Take max_by length in this array and return the length of the greatest value in the array.


def build_substrings(string)
  substrings = []

  (0...string.size).each do |index|
    (1..string.size - index).each do |length|
      substrings << string[index, length]
    end
  end
  substrings
end

def longest_palindrome(string)
  return 0 if string.empty?
  substrings = build_substrings(string)

  palindromic_substrings = substrings.select { |substr| substr == substr.reverse }
  palindromic_substrings.max_by { |substr| substr.length }.length
end

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9
p longest_palindrome('') == 0