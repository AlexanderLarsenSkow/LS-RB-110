# Write a method that takes an array of consecutive letters as input and returns the missing letter.

# Input: array of character strings
# Output: # missing character of the opposite case from the input array

# Rules:
  # Given an array of characters in almost alphabetical order
    # return the missing character with the opposite case as the characters in the input
    # if the array is empty, return an empty array


# Examples:

# p determine_missing_letter(['a','b','c','d','f']) == 'E' # 'E' opposite case
# p determine_missing_letter(['o','q','r','s']) == 'P' # standard
# p determine_missing_letter(['H','J','K','L']) == 'i' # lowercase i
# p determine_missing_letter([]) == [] # empty

# Data Structures:
  # alphabet array
  # compare my array with the alphabet array
  # substrings of the alphabet array
  # can't use include because it won't include the substring

  # build a hash of letters pointing at integer values
  # compare that with the array: plug in the missing number, then get the key that is from the number
  # [1, 2, 3, 5] => 4 increment 1 when you find a value that isn't present in the array, take this value

  # return upcase if all elements are lower
  # return donwcase if all elements are upper

# Algorithm:
  # build a hash constant with all the letters pointing at their alphabetic values

  # ALL LOWERCASE?
    # every letter match lowercase?

  # MAIN METHOD
    # map the array to be an array of the values for each letter downcased
    # iterate through the integers array and find the missing number. if the array doesn't include
    # the variable incremented, then we break and take this number and find the corresponding ketter key in the hash
    # if all of the characters in the input array are upcased, then return down, and vica versa

  LETTERS = ('a'..'z').zip(1..26).to_h

  def all_lowercase?(array)
    array.all? { |char| char.match?(/[a-z]/) }
  end

  def determine_missing_letter(array)
    return array if array.empty?

    letter_values = array.map { |char| LETTERS[char.downcase] }
    point = LETTERS[array[0].downcase]

    letter_values.each do |value|
      break if !letter_values.include?(point)
      point += 1
    end

    if all_lowercase?(array)
      LETTERS.key(point).upcase
    else
      LETTERS.key(point)
    end
  end

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []