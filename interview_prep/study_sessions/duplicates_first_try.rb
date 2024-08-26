# You are given a string 's' consisting of lowercase letters. A duplicate removal consists of choosing two adjacent and equal letters and removing them.

# We repeatedly make duplicate removals on 's' until we no longer can.

# Write a method that returns a string after all duplicate letters are removed.

# PEDAC

# Understanding the Problem:
  # We choose two adjacent letters and remove them.
  # So, if the string has two letters, remove both of them.
  #

  # Implicit Requirements:
    # by removing duplicates, it means that you have to remove BOTH of them. NOT just the duplicate.

  # Input:
    # String value

  # Output: String with all double duplicates removed.
    # Return the mutated object.

  # Examples:
    # p remove_duplicates("aaybbyz") == "z"
    # p remove_duplicates("a") == "a"
    # p remove_duplicates("abbca") == "aca"
    # p remove_duplicates("aabbcc") == ""
    # p remove_duplicates("aderg") == "aderg"
    # p remove_duplicates("azxxzy") == "ay"
    # p remove_duplicates("abbaca") == "ca"

# Data Structure:
  # Array
  # Can split into chars maybe then iterate through
  # Check to see if chars are ever equal. If they're equal, remove them.

# How can we check if the characters are doubled?

# Algorithm:
  # Create an array of characters from the string
  # Create an empty array
  # Create an index equal to 0
  # Create a second index equal to 1
  # Add the element to the array only if it is not equal to one of the other elements.
  # When index2 is equal to the size of the array, add 1 to index and set index2 equal to index + 1
  # Return the mutated string

  # Edge Case
    # So, you should also remove two duplicates when you remove two and create a new pairing.
      # For example: You have "axyyx".
      # First, you remove 'yy'. This leaves 'axx'
      # Now, you have to remove 'xx', leaving 'a'. We might not be able to do this this way.

    # How can I account for this situation?
    # It's weird because you have a mutating array while you're iterating.
    #





def remove_duplicates(string)
  char_arr = string.chars

  duplicates = []
  index = 0
  index2 = index + 1

  loop do
    break if index == string.size

    char1 = string[index]
    char2 = string[index2]

    if char1 == char2
      duplicates.push(char1, char2)
      char_arr.delete_at(index)
      char_arr.delete_at(index2)
    end

    index += 1

end
  duplicates
  #char_arr
end


#p remove_duplicates('aab') #== 'b'
p remove_duplicates("aaybbyz") #== "z" # because it takes out aa, then bb, then yy is together. Take it out lol.
#p remove_duplicates("a") #== "a"
#p remove_duplicates("abbca") #== "aca"
#p remove_duplicates("aabbcc") == ""
#p remove_duplicates("aderg") == "aderg"
#p remove_duplicates("azxxzy") #== "ay"
#p remove_duplicates("abbaca") #== "ca"