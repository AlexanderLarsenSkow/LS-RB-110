# Input: string
# Output: character that occurs most often in the string

# Rules:
  # Return the character with the highest count in the string
  # if there are multiple chars with the same count, return the one that appears first.
  # uppercase and lowercase chars are the same: return the lowercase version

# Examples:
# p most_common_char('Hello World') == 'l' # l 3 times
# p most_common_char('Mississippi') == 'i' # i / s 4 but i appears first
# p most_common_char('Happy birthday!') == 'h' # h
# p most_common_char('aaaaaAAAA') == 'a' # a lowercase

# my_str = 'Peter Piper picked a peck of pickled peppers.'
# p most_common_char(my_str) == 'p' #

# my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
# p most_common_char(my_str) == 'e'

# Data Structures:
  # downcase the string so we don't have to worry about differences in the characters
  # iterate over the unique string of downcased characters and convert the array to an array of character counts
  # iterate over character counts as return the max.
  # iterate again over the characters and return the first char that equals the highest count.
  
  # Algorithm ^ 

def most_common_char(string)
  small_str = string.downcase
  high_count = small_str.chars.uniq.map { |char| small_str.count(char) }.max
  small_str.each_char { |char| return char if small_str.count(char) == high_count }
end

p most_common_char('Hello World') == 'l'
p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'