=begin
Write a method that takes a string of words as an argument and returns the word that scores
  highest according to the letters it contains. Each letter of a word scores points according
  to its position in the alphabet: a = 1, b = 2, etc. So, for example, the word "ace" has a score of 9 (1 + 3 + 5).

If two words are tied for highest score, return the word that appears earliest in the original string. earliest word

You can assume that all letters in the input string are lowercase and all input strings are valid.

# Input: string value
# Output: returning one of the words in the string based on the value of each character
  # "a" = 1, "b" = 2, so on

# Rules:
  # Given a string of words, return the word with teh highest score
  # Every letter character has a score: 'a' = 1, 'b' = 2, it increments
  # if two words have teh same score, return the earliest word

Examples:
p alphabet_score('time is up') == 'time'
p alphabet_score('time to stop') == 'stop'
p alphabet_score('aced up') == 'up'
p alphabet_score('ebb ace') == 'ebb' earliest word
p alphabet_score('c ba') == 'c'
=end

# Data Structures:
  # Arrays and Hashes
  # Hash with the keys as letter characters and teh values as integers, or scores
  # for every word we want to find the score for each word, take that score and put it in a scores array
  # Then, reiterating through the words array, we find the first word that matches the max

# Algorithm:
  # First, create an alphabet constant that is an array of letter characters
  # Second, increment from 1 to 26 and create a hash with the characters as keys and the scores as values
    # METHOD
    # create a hash object
    # create a count variable equal to 1
    # iterate through each character
    # add the character and count integer to the array
    # increment count by 1
    # return the new hash

  # you can't find the score at the same point. It just

  # FIND_MAX-SCORE
    # create scores array
    # iterate through the words string. Iterate through every character of each word and find the score for this word.
      # create a score variable
      # for each character, add the score in the hash to the score variable. Then push that to the scores array
    # Place teh score in the scores array
    # end iterating
    # take the max score

  # MAIN METHOD
    # Reiterate through words. If iterating thorgh each word and each character we find the max score
    # return that word.


ALPHABET = ('a'..'z').to_a

def alphabet_scores
  alphabet_scores = {}

  ALPHABET.each_with_index do |letter, index|
    alphabet_scores[letter] = index + 1
  end

  alphabet_scores
end

def find_score(word, alphabet_scores)
  score = 0
  word.chars.each do |char|
    score += alphabet_scores[char]
  end
  score
end

def find_max_score(words, alphabet_scores)
  scores = []
  words.split.each do |word|
    scores << find_score(word, alphabet_scores)
  end
  scores.max
end

def alphabet_score(words, alphabet_scores)
  max = find_max_score(words, alphabet_scores)

  words.split.each do |word|
    return word if find_score(word, alphabet_scores) == max
  end
end

p alphabet_score('time is up', alphabet_scores) == 'time'
p alphabet_score('time to stop', alphabet_scores) == 'stop'
p alphabet_score('aced up', alphabet_scores) == 'up'
p alphabet_score('ebb ace', alphabet_scores) == 'ebb' #earliest word
p alphabet_score('c ba', alphabet_scores) == 'c'

# Think about how to use max_by with this problem. I really liked Michael's solution on that. Very succinct, no need 
  # for lots of helper methods.

# This was good but I hacked and slashed too much. I knew how to do this but I spent way too long
  # trying to hack through the code.
# If you don't know what's going on, go back to the algorithm.
# You're more likely to come up with a solution if you stay on Data Structures or something. 
  # this is the note taking time. Spend your time here
    # you've been going over high level stuff in data structures, but you should get specific on these and 
    # figure out the HOW of what you need to do here as well.
    
    # The problem so far is I'm not spending time doing that enough. This just takes some time. Don't worry about this.
    

