# Write a method that takes a string as an argument and returns a new string according to
# the following rules:

# If a letter occurs only once in the string, leave it unchanged
# # 1 time unchanged

# If a letter occurs more than once, capitalize the first and last occurrences of that letter in the string
# # more than once, first and last capital

# The input string will only contain lowercase alphabetic characters

# Input: string
# Output: new string with all duplicates: the first and last occurrence are capitalized.

# Rules:
  # If a character apears more than one time, we capitalize the first and last one.
  # If a character appears only 1 time, we do nothing.
  # you can assume the input will be all lowercase.

# Examples:
# p first_and_last_case('abc') == 'abc' # no duplicates no uppercasing
# p first_and_last_case('aaabc') == 'AaAbc' # 1 duplicate, 1st and last are uppercased.
# p first_and_last_case('aaabccbb') == 'AaABCCbB' # 3 duplicates, A B C

# Data Structures:
  # arrays
  # map to transform it. If the count is less than 1 for that character, then we leave char
  # else, helper method that returns the first and last occurrence of every part of that character upcased.
  # push every duplicate into an array. Uppercase the first and last occurrence.
  # then we join it, and that will be the result for the map invocation. then we join map together

  # in that helper method, it might have an issue where I say, if the count is greater than 1, put this in an array.
  # This will work when there is only char duplicated.
  # But we need to figure out a solution for when there are multiple duplicates.

  # so there was an issue where calling capitalize chars in the map invocation returned those characters upcased

  # aaaa [aaaa] => [AaaA].join
  # need to tell the character it will return

  # better to build an array of each character, if they are duplicates,
  # index takes the first index that matches the character or element.

  # there is a piece of this that is about comparison.
  # so we have to compare the indicies between same elements.
  # iterate over the string one time
  # then iterate again, with index as a variable.
  # if the character is equal to another character and less than the second index, then upcase it?
    # the problem here is that if there are 4, for example, then the second is less than the 3rd which is less than the 4th.
    # these will be upcased as well.

  # We want to find a solution where we only upcase the first and last occurrence.
  # capitalize the element at .index
  # capitalize the element at .rindex

  # how do we tell if something is the first or last occurrence in a string?
    # count
    # maybe we push all characters into an array
    # if count is 1, push teh character only
    # if the count is greater and the character's index is lower than the other characters

# Algorithm:
  # create an empty string
  # iterate over teh chars in the string with index
  # push each char into the string
  # if the char count is greater than 1 and index == to char.index, which finds the first index,
    # upcase the char and push it in
  # else if the charcount is greater than 1 and index == to char.rindex, which finds the last index for that element,
    # upcase the char and push it in.
  # return the string


def first_and_last_case(string)
  first_and_last_upcased = ''

  string.chars.each_with_index do |char, index|
    if string.count(char) < 2
      first_and_last_upcased << char

    elsif string.count(char) >= 2 && (index == string.index(char) || index == string.rindex(char))
      first_and_last_upcased << char.upcase

    else
      first_and_last_upcased << char
    end
  end
  first_and_last_upcased
end

p first_and_last_case('abc') == 'abc' # no duplicates no uppercasing
p first_and_last_case('aaabc') == 'AaAbc' # 1 duplicate, 1st and last are uppercased.
p first_and_last_case('aaabccbb') == 'AaABCCbB' # 3 duplicates, A B C