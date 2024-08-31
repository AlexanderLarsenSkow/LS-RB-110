# Write a method that takes a string and returns the character that appears the most often in the string.
# If there are multiple characters with the same greatest frequency, take the first one that appears.

# Input: String
# Output: character that appears the most times

# Rules:
  # Given a string, return the character that has the highest count
  # If there are multiple equal strings at the highest count, return the first one.
  # case doesn't matter.

# Examples:
# p most_common_char('Hello World') == 'l' # => 'l' appears the most
# p most_common_char('Mississippi') == 'i' # => 'i' 's' are the same but 'i' appears first
# p most_common_char('Happy birthday!') == 'h' # => 'H' and 'h', case doesn't matter
# p most_common_char('aaaaaAAAA') == 'a' # downcased here.

# my_str = 'Peter Piper picked a peck of pickled peppers.'
# p most_common_char(my_str) == 'p'

# my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
# p most_common_char(my_str) == 'e'

# Data Structure:
  # Arrays, if any
  # chars maybe to split into characters
  # Iterate over characters and check the count of the each character.
  # Could create a count variable. Only reassign it if the count of a new character is greater.
  # Once we're done iterating, we return the letter that is at that count.
  # remember to deal with downcased strings only.

# Algorithm:
  # create a variable count equal to 0
  # iterate over teh string split into characters
  # set count equal to the count of the characters in the string if that count is greater than characters
  # finish iterating, then reiterate through and return the first letter that equals this count

def most_common_char(string)
  count = 0
  downcased_chars = string.chars.map { |char| char.downcase }

  downcased_chars.each do |char|
    count = downcased_chars.count(char) if count < downcased_chars.count(char)
  end
  downcased_chars.each do |char|
    return char if downcased_chars.count(char) == count
  end
end

p most_common_char('Hello World') == 'l'
p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'