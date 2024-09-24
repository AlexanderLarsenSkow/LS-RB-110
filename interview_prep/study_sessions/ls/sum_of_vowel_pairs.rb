#Problem
#Write a method called sum_of_vowel_pairs
#That takes a sentence
#And returns an integer representing the sum
#of the lengths of all word pairs where both words start
#with a vowel (a, e, i o and u)

#the length must not include spaces
#the case doesn't matter in the sentence

# Input: string of words /sentence
# Output: integer value representing the total sum of all combinations of the length with all combinations that start with aieou


# Rules:
  # Given a stirng of words, return the integer value representing the sum of the lengths of all combinations of pairs that start with aieou
  # both words must start with aieou
  # The length must not include spaces
  # case doesn't matter here

# # Test cases
# puts sum_of_vowel_pairs("An apple a day keeps the doctor away")
# =begin
# An apple # both a
# An a # both a
# An away
# apple a
# apple away
# a away
# 36
# =end
# puts sum_of_vowel_pairs("Every engineer enjoys innovative algorithms")
# =begin
# Every engineer
# Every enjoys
# Every innovative
# Every algorithms
# engineer enjoys
# engineer innovative
# engineer algorithms
# enjoys innovative
# enjoys algorithms
# innovative algorithms
# 156

# Data Structures:
  # Okay:
    # Find all combinations of pairs for the string.
    # select all pairs where every word starts with aieouAEIOU
    # using arrays gets rid of spaces, so split
    # after selecting, map the entire array by the length and sum of each subarray
    # return the sum of this mapped array

# Algorithm:
  # build out all pairs for string
  # split the string into an array of words
  # iterate over the words with index
  # for each word, iterate from index + 1 to the size of the array - 1
    # a pair array contains the word and the next word
    # add it to a return array
  # return the array

  # MAIN METHOD
    # select all pairs arrays where eveyr el starts with a vowel
    # map this array of arrays by the length and sum of each pair
    # return the sum of this array

    # array of arrays
    # need to access the length of each string
    # iterate with map, iterate again with map and take the size of each string then sum it.

def build_pairs(string)
  words = string.split
  pairs = []
  words.each_with_index do |word, index|

    (index + 1...words.size).each do |index2|
      pair = [word, words[index2]]
      pairs << pair
    end
  end
  pairs
end

# p build_pairs('a b c')

def sum_of_vowel_pairs(string)
  vowel_pairs = build_pairs(string).select do |pair|
    pair.all? { |str| str.start_with?(/[aeiouAEIOU]/) }
  end

  size_sums = vowel_pairs.map do |pair|
    sizes = pair.map do |string|
      string.size
    end
    sizes.sum
  end
  size_sums.sum
end

# # Test cases
p sum_of_vowel_pairs("An apple a day keeps the doctor away") == 36
# # =begin
# # An apple
# # An a
# # An away
# # apple a
# # apple away
# # a away
# # 36
# # =end
puts sum_of_vowel_pairs("Every engineer enjoys innovative algorithms") == 156
# # =begin
# Every engineer
# Every enjoys
# Every innovative
# Every algorithms
# engineer enjoys
# engineer innovative
# engineer algorithms
# enjoys innovative
# enjoys algorithms
# innovative algorithms
# 156
