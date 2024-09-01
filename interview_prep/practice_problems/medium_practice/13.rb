# Write a method that takes 2 strings  and returns true if some portion of the first string can
  # be rearranged to match the second entirely, else false
# portion: is that a substring or random assortments from the string?
# always downcase

# Input: 2 strings, 2nd string nothing happens, 1st string we check to see if a portion can equal the second string
# Output: true or false based on the above condition

# Rules:
  # See if a portion of string 1 rearranged can equal string2
  # they're always lowercase in this probelm set.

# Examples:
# p unscramble('ansucchlohlo', 'launchschool') == true # =>
# p unscramble('phyarunstole', 'pythonrules') == true
# p unscramble('phyarunstola', 'pythonrules') == false #
# p unscramble('boldface', 'coal') == true # small portion of string1 can equal string2

# Data Structures:
  # Arrays
  # take random portions of each string and see if it can equal the second input string
  # how do we take portions? shuffle, but we know that won't work.
  # So we need take all shared characters and take the count of those and add them into an array.
  # we add into the array until we have all the common characters
  # Iterate through string2, and add the character in string 2 to the array if it is present in string1 and count is the same or
    # greater.

# Algorithm:
  # create an empty array
  # iterate through each character in string2
  # if the count of the char in string 1 is greater or equal to the count in string2, we add the character.
  # If joined together, the array equals string2, we return true.
  # If not, false

def unscramble(string1, string2)
  test_characters = ''

  string2.each_char do |char|
    test_characters << char if string1.count(char) >= string2.count(char)
  end
  test_characters == string2
end


p unscramble('ansucchlohlo', 'launchschool') == true
p unscramble('phyarunstole', 'pythonrules') == true
p unscramble('phyarunstola', 'pythonrules')== false
p unscramble('boldface', 'coal') == true