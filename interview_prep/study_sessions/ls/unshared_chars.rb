# input: 2 strings
# output: 1 final string with the characters joined together

# Data Structure:
  # iterate over the first string first
  # add the character to a string if the second string doesn't include it

  # iterate over the second string second
  # add the character to a string if it isn't included in the second string

  # add all characters from first string that aren't in second
  # add all characters from second string that aren't in first

# Algorithm:
  # HELPER UNSHARED CHARACTERS
    # iterate over each character in the first string
    # add the characters to an empty return string if they are not included in the second input
    # return the string of unshared_characters

  # MAIN METHOD:
    # Call the helper method twice and switch its arguments.
    # Add the two strings returned from the different method calls together.
    # return this string

# SOLUTION ONE

def unshared_characters(string1, string2)
  unshared_chars = ''

  string1.each_char do |char|
    unshared_chars << char if !string2.include?(char)
  end
  unshared_chars
end

def unique_string_characters(string1, string2)
  unshared_chars1 = unshared_characters(string1, string2)
  unshared_chars2 = unshared_characters(string2, string1)
  unshared_chars1 + unshared_chars2
end

puts unique_string_characters("xyab","xzca") == "ybzc" #// true
puts unique_string_characters("a","z") == "az" #// true
puts unique_string_characters("abcd","de") == "abce" #// true
puts unique_string_characters("abc","abba") == "c" #// true
puts unique_string_characters("xyz","zxy") == "" #// true


# SOLUTION TWO

# Algorithm for Different Helper Method
  # Reject

  # Split the first string into an array of characters
  # Reject all the characters that do not occur in the other string
  # join the array together into a string to return.

  def unshared_characters2(string1, string2)
    string1.chars.reject { |char| string2.include?(char) }.join
  end

  def unique_string_characters2(string1, string2)
    unshared_chars1 = unshared_characters2(string1, string2)
    unshared_chars2 = unshared_characters2(string2, string1)
    unshared_chars1 + unshared_chars2
  end

puts unique_string_characters2("xyab","xzca") == "ybzc" #// true
puts unique_string_characters2("a","z") == "az" #// true
puts unique_string_characters2("abcd","de") == "abce" #// true
puts unique_string_characters2("abc","abba") == "c" #// true
puts unique_string_characters2("xyz","zxy") == "" #// true