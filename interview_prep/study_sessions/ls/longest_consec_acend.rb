# Write a function called longestConsecutiveAscendingWords that takes a sentence as input and finds all consecutive word  where the succeeding word is longer than the previous. -- Jun

# Input: string of words
# Output: array of longest consecutive words where the suceeding word is longer than the previous

# Rules:
  # Given the string of words, return an array where every suceeding word is longer than the preceeding word
  # it must be the longest of these.

# Examples:
# puts longest_consecutive_ascending_words("The quick brown fox jumps over the lazy dog").inspect
# [ 'The', 'quick' ] # quick is longer than the
  # brown and quick same
  # fox not longer than brown
  # jumps longer than fox, not longer than The quick
  # the lazy
  # [[The quick], [fox jumps], [the lazy]] max = The quick.

# puts longest_consecutive_ascending_words("A journey of a thousand miles begins with a single step").inspect
# [ 'A', 'journey' ]

# puts longest_consecutive_ascending_words("Easy come easy go").inspect
# [ 'Easy' ]

# puts longest_consecutive_ascending_words("Tiny bird flew over the peaceful countryside").inspect
# [ 'the', 'peaceful', 'countryside' ]

# Data Structures:
  # Create an array of words with an index
  # for every word, create an array
    # for each word, iterate over slice of the words again from the next index after the current index to the end of the array.
    # if the current word in the second iteration is greater than the previous, add it to the array. if not, don't add, and break
    # put this array in a larger ascending words array and take the max at the end

# Algorithm ^

# I want to get it where I skip an iteration when the word is not greater than the suceeding

# def longest_consecutive_ascending_words(words)
#   words = words.split
#   all_ascending_words = []

#   words.each_with_index do |word, index|
#     ascending_words = [word]

#     (index + 1...words.size).each do |index2|
#       if words[index2].length > ascending_words.last.length
#         ascending_words << words[index2]
#       else
#         break
#       end
#     end
#     all_ascending_words << ascending_words
#   end
#   all_ascending_words.max_by { |words| words.size }
# end

# puts longest_consecutive_ascending_words("The quick brown fox jumps over the lazy dog").inspect # [ 'The', 'quick' ]
# puts longest_consecutive_ascending_words("A journey of a thousand miles begins with a single step").inspect # [ 'A', 'journey' ]
# puts longest_consecutive_ascending_words("Easy come easy go").inspect # [ 'Easy' ]
# puts longest_consecutive_ascending_words("Tiny bird flew over the peaceful countryside").inspect # [ 'the', 'peaceful', 'countryside' ]

# Approach 2:

def longest_consecutive_ascending_words(words)
  words = words.split
  all_ascending_words = []

  words.each_with_index do |word, index|
      ascending_words = [word]
      next if all_ascending_words.any? { |words| words.include?(word)}

    (index + 1...words.size).each do |index2|
      if words[index2].length > ascending_words.last.length
        ascending_words << words[index2]
      else
        break
      end
    end
    all_ascending_words << ascending_words
  end
  all_ascending_words.max_by { |words| words.size }
end

puts longest_consecutive_ascending_words("The quick brown fox jumps over the lazy dog").inspect # [ 'The', 'quick' ]
puts longest_consecutive_ascending_words("A journey of a thousand miles begins with a single step").inspect # [ 'A', 'journey' ]
puts longest_consecutive_ascending_words("Easy come easy go").inspect # [ 'Easy' ]
puts longest_consecutive_ascending_words("Tiny bird flew over the peaceful countryside").inspect # [ 'the', 'peaceful', 'countryside' ]