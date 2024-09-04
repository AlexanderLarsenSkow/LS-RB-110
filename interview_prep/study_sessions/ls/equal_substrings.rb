# Given a string s, return the length of the longest substring between two equal characters,
# excluding the two characters. If there is no such substring return -1.

# A substring is a contiguous sequence of characters within a string.

# PEDAC

# Understanding the Problem:
  # Input:
    # string argument

  # Output:
    # integer representing the length of the longest substring between two equal characters

  # Explicit Requirements:
    # Return the length of the longest substring between two characters
    # Two equal characters might be "a" and "a"
    # Exclude those characters in the final value
    # return -1 if there are no duplicates.

  # Examples:
    # p max_length_between_equal_characters("acbsewb") == 3 # 3 between b and b
    #  p max_length_between_equal_characters("acbsewba") == 6 # 6 between a and a
    # p max_length_between_equal_characters("aa") == 0 # no characters between a and a
    # p max_length_between_equal_characters("cbzxy") == -1 # return -1 if there are no duplicates

  # Data Structure:
    # Arrays
    # Can use this to find all the substrings


  # Algorithm:
    # Build an array of substrings from the first duplicate to the second duplicate
      # create an empty substrings array
      # create a variable index at 0
      # create a variable slice at 1
      # take the slice from index to slice
      #


    # Find the longest substring



  # Code

  def build_substrings(string)
    substrings = []
    index = 0
    slice = 1

    loop do
      break if index == string.size
      substrings << string[index, slice]

      if slice == string.size
        slice = string.size - index
        index += 1
      end
      slice += 1

    end
    substrings
  end

  p build_substrings('abc') == ['a', 'ab']

  def max_length_between_equal_characters(string)

  end


  p max_length_between_equal_characters("acbsewb") == 3 # 3 between b and b
  p max_length_between_equal_characters("acbsewba") == 6 # 6 between a and a
  p max_length_between_equal_characters("aa") == 0 # no characters between a and a
  p max_length_between_equal_characters("cbzxy") == -1 # return -1 if there are no duplicates
