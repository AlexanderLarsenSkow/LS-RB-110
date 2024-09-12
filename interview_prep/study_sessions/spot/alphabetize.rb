
# Write a method that takes a string as an argument and returns an array of all
# the words in the string sorted by length, shortest to longest, and alphabetically.
# That is, all the words of a given length should be together in the returned array,
# in alphabetical order. Ignore case (e.g. the word 'ace' should appear before the word 'Bee'
# in the returned array.) You may assume that the input string will contain only alphabetic characters.

# Input: string with words
# Output: array of words sorted by length and alphabetical order

# Rules:
  # Sort the words in the string based on length and alphabetic order
  # Ignore case altogether

# Examples

# p length_alphabetical('To say yes or no') == ["no", "or", "To", "say", "yes"] # all words of size 2 first, alphabetic order
# p length_alphabetical('A man a plan a canal Panama') == ["A", "a", "a", "man", "plan", "canal", "Panama"] #
# p length_alphabetical('The quick brown fox jumps over the lazy dog') == ["dog", "fox", "The", "the", "lazy", "over", "brown", "jumps", "quick"]
# p length_alphabetical('The Slow Path for Studious Learners to a Career in Software Development') ==
# ["a", "in", "to", "for", "The", "Path", "Slow", "Career", "Learners", "Software", "Studious", "Development"]


# Data Structures:
  # for all words of size 2, order it alphabetically

  # want to take each size of string in the array and basically add them to an array inside a block

  # sort the block alphabetically, then add every element in this array to a result array
  #
    # 'I have a fun dog' 1 => ['a', 'I']  3 => ['dog', 'fun'], 4 =>  ['have']

  # iterate from the smallest size string map => [1, 1, 3, 3, 4] unique this: for each integer, take each element that size equals this
  # if the size of the element in the words array equals the size of the element, select that element

  # getting the alphabetic order is a problem right now
    # because I am comparing words to characters

  # sit sat
    # sat needs to be first
    # sit is second

  # [sit, sat] # first letter, if not same, finish. If same, go to next letter
  #


# Algorithm:
  # build alphabet hash
    # METHOD
    # range from a to z then zip it with 1 to 26 then convert it to a hash:

  # split the string into an array of words
  # map the array and transform it by the size of each word element
  # iterate over the unique word_size array
  # for each size, put it in an array, sort the array by the dwoncased character's position in the alphabet
    # then iterate over this array, and add the elements to the result array

# need to look at the actual sorting of the subarray
# sort_by every character, not just word[0]
# iterate through the characters and sort the word that way

# check each character
# if the characters are different, we can take sort_by
# if the characters are the same, we have to move to the next character but only for those words.
#

# HELPER FOR ALPHABETIZING
  # input: array, size integer
  # output: the sorted array

# [sit, sat, sum, let] [sit, let]
  # not comparing to every other element
  # let goes into another array -> sit sat sum

    # until the result array has all the elements
      # sort_by the first letter
      # iterate through the sorted array
      # take each letter and place it in a result array
      #
    # continuosly iterate through the letters until the letters are different
    # so if the letter is different
    #

def length_alphabetical(sentence)
  alphabetic_words = []
  words = sentence.split
  words_sizes = sentence.split.map(&:size)

  words_sizes.uniq.sort.each do |size|
    sized_words = []

    words.each do |word|
      sized_words << word if word.size == size
    end
    alphabetic_words += sized_words.sort_by { |word| word.downcase }
  end
  alphabetic_words
end

p length_alphabetical('To say yes or no') == ["no", "or", "To", "say", "yes"] # all words of size 2 first, alphabetic order
p length_alphabetical('A man a plan a canal Panama') == ["A", "a", "a", "man", "plan", "canal", "Panama"] #
p length_alphabetical('The quick brown fox jumps over the lazy dog') == ["dog", "fox", "The", "the", "lazy", "over", "brown", "jumps", "quick"]
p length_alphabetical('The Slow Path for Studious Learners to a Career in Software Development') ==
["a", "in", "to", "for", "The", "Path", "Slow", "Career", "Learners", "Software", "Studious", "Development"]
