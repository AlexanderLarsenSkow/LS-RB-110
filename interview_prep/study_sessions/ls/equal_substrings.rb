# Second Attempt on this Problem. Definitely a much stronger showing than before!

# Given a string s, return the length of the longest substring between two equal characters,
# excluding the two characters. If there is no such substring return -1.

# A substring is a contiguous sequence of characters within a string.

# Input: string
# Output: innteger: the longest length of a substring between 2 equal substrings

# Rules:
# return the length between two equal characters in a substring
# the substring should not include the characters
# If there are no substrings like this, return - 1.

# Examples:
  # p max_length_between_equal_characters("acbsewb") == 3 # 3 between b and b
  #  p max_length_between_equal_characters("acbsewba") == 6 # 6 between a and a
  # p max_length_between_equal_characters("aa") == 0 # no characters between a and a
  # p max_length_between_equal_characters("cbzxy") == -1 # return -1 if there are no duplicates


# Data Structures:
  # Arrays
  # We want to iterate over each character, and for each character, iterate again over the collection and compare against one another
  # My first idea is to iterate over number values for the index. So, for the first index, iterate from 0
    # to the array size - 1.
  # for the second index, we could iterate from index + 1 to array size - 1, so that we never go backwards.
  # if the first character is equal to the second character, we take (index 1 + 1,) (to remove that character)
  # and - index1 from index2, so we get the length of the substring.

    # Note: If we wanted to include the character, we would make the lenght index2 - index1 + 1. however, we do
      # not want to include it.

    # take the substring and push it into the array

  # At the end, take max by with length length. maybe push - 1 into the array as well.

  # might be a problem with nil on index + 1, but we'll see.

  # Algorithm:
    # create an empty substrings array

    # iterate from 0 to the size of the string - 1, thsi is index1
    # iterate again from index1 + 1 to the size of the string - 1
    # the index is index + 1
    # the length is index2 - index1
    # take the substring at these variables and add it to the substrings array
    # after iterating, if the array is empty, return - 1
    # if not empty, take max by string length and return the length


def max_length_between_equal_characters(string)
  substrings = []

  (0...string.size).each do |index1|
    ((index1 + 1)...string.size).each do |index2|
      if string[index1] == string[index2]
        index1 = index1 + 1
        length = index2 - index1
        substrings << string[index1, length]
      end
    end
  end
  return - 1 if substrings.empty?
  substrings.max_by { |str| str.length }.length
end


  p max_length_between_equal_characters("acbsewb") == 3 # 3 between b and b
    p max_length_between_equal_characters("acbsewba") == 6 # 6 between a and a
  p max_length_between_equal_characters("aa") == 0 # no characters between a and a
  p max_length_between_equal_characters("cbzxy") == -1 # return -1 if there are no duplicates
