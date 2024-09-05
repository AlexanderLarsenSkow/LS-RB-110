# You are given a string 's' consisting of lowercase letters. A duplicate removal consists of choosing
  # two adjacent and equal letters and removing them.

# We repeatedly make duplicate removals on 's' until we no longer can.

# Write a method that returns a string after all duplicate letters are removed.

# input: string
# output: string with all adjacent duplicates removed

# Rules:
  # remove all duplicate letters that are next to each other.
  # adjacent means they are right next to each other.
  # continuously remove duplicates only there are none left.
    # this means that, after iterating through the string, you need to check again to determine if there is anything left
    # to get rid of.

  # Examples:
    # p remove_duplicates("aaybbyz") == "z" remove aa bb => yyz remove yy => z
    # p remove_duplicates("a") == "a" # nothing removed
    # p remove_duplicates("abbca") == "aca" # remove bb => aca
    # p remove_duplicates("aabbcc") == "" remove all
    # p remove_duplicates("aderg") == "aderg" remove none
    # p remove_duplicates("azxxzy") == "ay" remove xx => azzy => remove zz => ay
    # p remove_duplicates("abbaca") == "ca" remove bb => aaca => remove aa => ca

# data Structures:
  # Arrays
  # first problem: how to remove letters? take non_duplicates and place them in an array?
  # you don't want to use delete because this will delete all teh characters outright. Won't work.
  # first: iterate from 0 to the size of the array - 1: this is the index
  # second: iterate from index + 1 to the size of the array - 1
  # if the characters equal each other, now we do something.
  # if the characters don't equal each other, add them to the result array.

  # continuously select until there are no duplicates

  # Second problem:
    # how do we handle the recursive element here?
      # so this could happen a number of times.
      # A few ideas:
      # recursion
      # while or until loop since we don't want our iteration to stop after going through all the elements
      # but what is the condition for that? while... what?

      # what count is greater than 1, no because this would be an infinite loop in some cases.
      # however, recursion also requires an

    # maybe a new method:
      # any_duplicates?
      # any? if any of the elements compared to one another is equal, then we return true. Continue iterating while this is true.

# Algorithm:
  # split the string into an array of characters
  # while there are duplicates in the array

    # METHOD
    # any_duplicates?
      # if index equals index + 1 for any element, return true

  # select elements with the mutating select method with an index.
  # select again and only select elements that are not equal to the next index.

def any_duplicates?(array)
  any_dups = false

  array.each_with_index do |char, index1|
    index2 = index1 + 1

    any_dups = true if array[index1] == array[index2] && index1 != index2

  end
  any_dups
end

def remove_duplicates(string)
  arr = string.chars

  while any_duplicates?(arr)
    
    arr.reject!.with_index do |char, index1|
      index2 = index1 + 1
      index3 = index1 - 1 unless index1 == 0
      index3 = index1 if index1 == 0

      (arr[index1] == arr[index2] && index1 != index2) || (arr[index1] == arr[index3] && index1 != index3)
    end
  end
  arr.join
end


p remove_duplicates('aab') == 'b'
p remove_duplicates("aaybbyz") == "z" # because it takes out aa, then bb, then yy is together. Take it out lol.
p remove_duplicates("a") == "a"
p remove_duplicates("abbca") == "aca" # my method right now removes 'a' for some reason
p remove_duplicates("aabbcc") == ""
p remove_duplicates("aderg") == "aderg"
p remove_duplicates("azxxzy") == "ay"
p remove_duplicates("abbaca") == "ca"