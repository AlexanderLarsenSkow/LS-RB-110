# Input: array of strings
# Output: array with all shared_characters and the number of shared characters amongst all the strings

# Rules:
  # Given an array of strings, return an array with all the shared characters. 
  # If they also share duplicates, add the count of duplicates.

# Examples:
# p common_chars(['rock', 'sak']) #== ['o', 'k']
# p common_chars(['bella', 'lable', 'roller']) == ['e', 'l', 'l']
# p common_chars(['boy', 'tool']) == ['o']

# Data Structures:
  # what if we take one string, split it into chars
  # and select all chars that appear in the other strings the same amount?

# iterate over the array then take an array of the characters for each string
# take an array of character counts for all shared_chars
# if all the strings share a character, select that character.
# only from 1st array. 
# now, transform this array into 3 arrays of character counts: 
  # based on every string...

# have to add characters duplicates until the count is equal to the count in all the strings
# what if we transform the array by the characters? then add until it equals the min... => helper method

# iterate through the characters in the first string.
# select all characters that appear in the other strings
  # [bella]
    # e l l 

# Algorithm:
  # take the first string in the array and call select on it the array of characters
  # take a transformed version of the main array for the count of the current character.
  # if this transformed array uniqed size is equal to 1, then add the current char to a return array until it equals the integer in this array
  # return the common_chars array

  def all_have?(array)
    array.all? { |count| count > 0 }
  end

def common_chars(array)
  common_chars = []
  chars = array[0].chars

  chars.uniq.each do |char|
    counts = array.map do |string|
      string.count(char)
    end

    if all_have?(counts)
      common_chars << char until common_chars.count(char) == counts.min
    end 
  end
  common_chars
end

p common_chars(['rock', 'soak']) == ['o', 'k']
p common_chars(['bella', 'lable', 'roller']) == ['e', 'l', 'l']
p common_chars(['boy', 'tool']) == ['o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']