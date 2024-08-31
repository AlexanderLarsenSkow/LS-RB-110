# Write a method that takes a string argument and returns a copy of the string that upcases every second character
  # in every third word in the string
# Other characters are the same.

# Input: string value
# Output: string value with every 2nd character in every 3rd string capitalized

# Rules:
  # In every 3rd word
  # Take each character at an odd index, and capitalize it.
  # Leave the other characters alone

# Implicit Rules:
  # every other second character would be the odd indicies for the third word.

# Examples:
# original = 'Lorem Ipsum is simply dummy text of the printing world'
# expected = 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world' # every 2nd character in 3rd word capitalized
# p to_weird_case(original) == expected

# original = 'It is a long established fact that a reader will be distracted'
# expected = 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD' # same as above
# p to_weird_case(original) == expected

# p to_weird_case('aaA bB c') == 'aaA bB c' # none capitalized

# original = "Mary Poppins' favorite word is supercalifragilisticexpialidocious"
# expected = "Mary Poppins' fAvOrItE word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS" # too long LOL
# p to_weird_case(original) == expected

# Data Structures:
  # Arrays
  # My first thought is we definitely have to split the array by words
  # At this point, if the word's (index + 1 ) is divisble by 3, we go into this word
  # then we capitalize every letter at an odd index (since they are every second character.)
  # Can use map to transform everything.

# Algorithm:
  # split the string into an array of words
  # Call map with index on this array and iterate through it
  # if the index + 1 is divisible by 3, call map with index on the word
  # if the index is odd, capitalize the word
  # return the array transformation from map joined together

def to_weird_case(words)
  weird_words = words.split(' ').map.with_index do |word, index1|
    if (index1 + 1) % 3 == 0
      weird_chars = word.chars.map.with_index do |char, index2|
        if index2.odd?
          char.upcase

        else
          char
        end
      end
      weird_chars.join

    else
      word
    end
  end
  weird_words.join(' ')
end

original = 'Lorem Ipsum is simply dummy text of the printing world'
expected = 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
p to_weird_case(original) == expected

original = 'It is a long established fact that a reader will be distracted'
expected = 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case(original) == expected

p to_weird_case('aaA bB c') == 'aaA bB c'

original = "Mary Poppins' favorite word is supercalifragilisticexpialidocious"
expected = "Mary Poppins' fAvOrItE word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
p to_weird_case(original) == expected



