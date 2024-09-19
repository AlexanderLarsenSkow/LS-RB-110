# Input: 2 strings
# Output: integer value representing the number of characters it takes to make an anagram

# Rules:
  # Return the integer value representing the number of characters you have to remove from both strings to make them anagrams.
  # Anagrams are words with the exact same number of characters in different orders.

# Examples:
# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
# p anagram_difference('codewars', 'hackerrank') == 10

# Data Structures:
  # work with count here maybe?
  # Could iterate over each string cloned.
  # Then add characters to an array for each string if their count is less in the other string.
  # if their count is greater than in the other string, we want to add the character until the count is the same as in the other string. iterate over a unique array of characters then...?
  # make that character equal to an open string value.
  # Take the characters in the array, return the size of this array

# Algorithm:
  # UNSHARED_CHARS:
    # iterate over an array of the characters from the string
    # if the count of the character is greater than the other string, make this character an open string
    # delete and add characters to an empty array until the count of the character in the string is the same as in the second string
    # return the array of unshared characters

  # MAIN METHOD:
    # call the unshared_chars method on the first string with teh second string as the test
    # call the unshared_chars method on the second string with the first string as the test
    # add the return arrays from both of these together
    # Take the size of this array and return it

def unshared_chars(string1, string2)
  clone = string1.dup
  unshared_chars = []

  (0...clone.size).each do |index|
    char = clone[index]

    if clone.count(char) > string2.count(char)
      unshared_chars << char
      clone[index] = ' '
    end
  end
  unshared_chars
end

def anagram_difference(string1, string2)
  unshared_chars1 = unshared_chars(string1, string2)
  unshared_chars2 = unshared_chars(string2, string1)
  (unshared_chars1 + unshared_chars2).size
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
p anagram_difference("oudvfdjvpnzuoratzfawyjvgtuymwzccpppeluaekdlvfkhclwau", "trvhyfkdbdqbxmwpbvffiodwkhwjdjlynauunhxxafscwttqkkqw") == 42
p anagram_difference("fcvgqognzlzxhmtjoahpajlplfqtatuhckxpskhxiruzjirvpimrrqluhhfkkjnjeuvxzmxo", "qcfhjjhkghnmanwcthnhqsuigwzashweevbegwsbetjuyfoarckmofrfcepkcafznykmrynt") == 50


# 13 minutes! You fucking awesome dude you. Way to go.
