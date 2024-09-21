# Input: string with hastag symbols
# Output: string with lots of deletions based on backspace symbol

# Rules:
  # Given a string, treat all # symbols like the backspace key.
  # if there is a #, delete the previous character.
  #

# Examples:
# p backspace("abc#d##c") == 'ac'
# p backspace("abc##d######") == ''
# p backspace("######") == ''
# p backspace ('') == ''

  # abc#d##c  # 2
  # => abd##c
  # => ac

# Data Structures:
  # every # key is a backspace
  # how do I deal with that?
  # delete the previous character if the current character is a #
  #
  # [a, b, c , #, d, #, #, c]
    # 0 a
    # 1 b
    # 2 c
    # 3 # delete c delete #

    # [a, b, d, #, #, c]

  # while the array has # characters
  # iterate over the array of characters.
  # if the current character is a #, delete the previous character
  # break if the size is smaller than the original size
  # what is the break condition?
  # so the size continually gets smaller since we're deleting on every iteration. Don't want to create a copy on every iteration. break if the size is 2 smaller than the other

# Algorithm:
  # Create an array of characters
  # while the array has the # character in it
  # iterate over the array. break if the size of the array is less than or equal to 2 - the original size.
  # iterate with index
  # if the current char is a #, delete_at this index and the previous index.
  # join the string back together.

def backspace(string)
  chars = string.chars

  while chars.include?('#')
    size = chars.size

    chars.each_with_index do |char, index|
      break if chars.size <= size - 2

      if char == '#'
        chars.delete_at(index)
        chars.delete_at(index - 1)
      end
    end
  end
  chars.join
end

p backspace("abc#d##c") == 'ac'
p backspace("abc##d######") == ''
p backspace("######") == ''
p backspace('') == ''