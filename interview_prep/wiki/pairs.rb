# Input: string
# Output: array of character pairs

# Rules:
  # Given a string, return an array
  # The array should have the characters in pairs.
  # If the size of the array is odd, the last character should have an underscore added to its element.

# Examples:
# p solution('abc') == ['ab', 'c_']
# p solution('abcdef') == ['ab', 'cd', 'ef']
# p solution("abcdef") == ["ab", "cd", "ef"]
# p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
# p solution("") == []

# Data Structures:
  # add characters to a string
  # skip each iteration where the index is odd.
  # add the element at index and index + 1
  # if the size of the return array is odd, add an underscore to the last element.
  # return the array

# Algorithm:
  # convert the string to an array and iterate over it with each_with index
  # skip each iteration when the index is odd
  # add index / index + 1 elements to a string
  # add the string to a return array
  # after iterating, if the size is odd, add an underscore to the last element.
  # return the array

def solution(string)
  pairs = []
  string.chars.each_with_index do |char, index|
    next if index.odd?
    pair = ''

    pair << string[index]
    pair << string[index + 1] unless string[index + 1] == nil
    pairs << pair
  end
  pairs[-1] << '_' if string.size.odd?
  pairs
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []