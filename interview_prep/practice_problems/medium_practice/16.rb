# Write a method that returns the count of distinct case-insensitive alphabetic characters and numeric digits that occur
  # more than once in the string
# The string only includes alphanumeric characters

# input: string
# output: returning an integer that represents the count, greater than 1, of each character in the string

# Rules:
  # return the number of characters in a string that occur more than once
  # case doesn't matter here, so downcase each string outright

# Examples:
# p distinct_multiples('xyz') == 0               # (none
# p distinct_multiples('xxyypzzr') == 3          # x, y, z # 3
# p distinct_multiples('xXyYpzZr') == 3          # x, y, z # case doesn't matter
# p distinct_multiples('unununium') == 2         # u, n #
# p distinct_multiples('multiplicity') == 3      # l, t, i
# p distinct_multiples('7657') == 1              # 7
# p distinct_multiples('3141592653589793') == 4  # 3, 1, 5, 9
# p distinct_multiples('2718281828459045') == 5  # 2, 1, 8, 4, 5

# Data Structures:
  # arrays
  # iterate through the string. If the count of the current char is greater than 1, we add 1 to a variable
  # chars uniq

# Algorithm:
  # create a variable count
  # downcase the string
  # iterate over a unique array of characters from the string
  # if the count of the current character is greater than 1, then add 1 to the count variable
  # Return the count

def distinct_multiples(string)
  distinct_multiple_count = 0
  low_string = string.downcase

  low_string.chars.uniq.each do |char|
    distinct_multiple_count += 1 if low_string.count(char) > 1
  end
  distinct_multiple_count
end

p distinct_multiples('xyz') == 0               # (none
p distinct_multiples('xxyypzzr') == 3          # x, y, z
p distinct_multiples('xXyYpzZr') == 3          # x, y, z
p distinct_multiples('unununium') == 2         # u, n
p distinct_multiples('multiplicity') == 3      # l, t, i
p distinct_multiples('7657') == 1              # 7
p distinct_multiples('3141592653589793') == 4  # 3, 1, 5, 9
p distinct_multiples('2718281828459045') == 5  # 2, 1, 8, 4, 5
