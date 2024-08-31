# Write a method that returns true if a portion of a string can be rearranged to match another string in its entirety.
# If not, return false.

# Input: 2 strings
# Output: true or false depending on whether or not a substring from 1 can be rearranged to equal the entire 2nd string.

# Explicit Rules:
  # Don't worry about casing.
  # Return true if a substring from string1 can be rearranged to equal the entire 2nd string
  # Else, return false
  # They do not have to be contiguous to be rearranged.
  # So buildng a substrings array is useless because you could rearrange any combination of letters in the initial string.

# Examples:
  # p scramble('javaass', 'jjss') == false
  # p scramble('rkqodlw', 'world') == true
  # p scramble('cedewaraaossoqqyt', 'codwars') == true
  # p scramble('katas', 'steak') == false
  # p scramble('scriptjava', 'javascript') == true
  # p scramble('scriptingjava', 'javascript') == true

# Data Structure
  # Arrays
  # If any subarray sorted can equal the entire string 2 sorted, we return true.
  # Take all the characters from string1, and we minus letters if they are not present in the other string
  # For example, 'axbrme' 'amber' 'x' is not present in 'amber', so we don't add x to the present letters array.
  # The problem starts with duplicates: when you have more r's in the first string, and only 1 in the second.
  # Then you have to the count of the second and minus until the count in the first is equal to the count in the second.


# Algorithm:
  # make an empty shared letters array
  # Iterate through the characters in string1 and through the characters in string2
  # If the count of the character in string1 greater than or equal to the count of the character in string2,
    # Add the count of string1 to the string2.

  # If the shared letters array can be sorted to equal string2 split into an array of chars sorted, then return true

  def scramble(string1, string2)
    shared_letters = []
    string1.each_char do |char1|
      count2 = string2.count(char1)

      if count2 <= string1.count(char1)
        shared_letters << char1 until shared_letters.count(char1) == count2
      end

    end
    shared_letters.sort == string2.chars.sort
  end

p scramble('rhaxmlbct', 'rrrrblah') == false
p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codwars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true

