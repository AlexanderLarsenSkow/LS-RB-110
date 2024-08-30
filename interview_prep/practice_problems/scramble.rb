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
  # Build out substrings for string 1 only
  # If any subarray sorted can equal the entire string 2 sorted, we return true.
  # any?
  # substring has to be the size of string2 to work in the solution. We can't make a shorter string work.
  # So, we can build an entire array of all the substrings or we can just try to make one with only the length of the second string

# Algorithm:
  # Build substrings for string1
    # METHOD
      # input string1 and string2
      # output: substrings in an array from string1
      # create an empty substrings array
      # iterate from 0 to the size of string2 - 1, creating an index var to represent each value
      # add the slice with index and string2.length to the substrings array
      # return thhe array of substrings


  # check if any of the substrings sorted out can equal the sorted string2. If so, return true.


  def build_substrings(string1)
    substrings = []
    sorted = string1.split('').sort.join

    (0...sorted.size).each do |index|
      (1..sorted.size - index).each do |length|
        substrings << sorted[index, length]
      end
    end
    substrings
  end

  #p build_substrings('ketas')
 p build_substrings('rkqodlw')
 # p build_substrings('world')

  def scramble(string1, string2)
    sub1 = build_substrings(string1)
    sub2_max = build_substrings(string2).max_by { |substr2| substr2.size }


    sub1.any? { |substr1| substr1 == sub2_max }
    p sub2_max
  end


#p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
#p scramble('cedewaraaossoqqyt', 'codwars') == true
#p scramble('katas', 'steak') == false
#p scramble('scriptjava', 'javascript') == true
#p scramble('scriptingjava', 'javascript') == true

