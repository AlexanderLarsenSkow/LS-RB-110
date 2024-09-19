# Input: secret message string
# Output: string that the secret reveals

# Rules:
  # the second and last letter of every word are switched.
  # The first letter is the ord value of the letter 'H' => 72
  # no special characters are used, only letters and spaces
  # it is by word.

# Examples:
# decipherThis('72olle 103doo 100ya'); // 'Hello good day'
# decipherThis('82yade 115te 103o'); // 'Ready set go'
# =end
# p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
# p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
# p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
# p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that
# wise old bird"
# p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"

# Data Structures:
  # Create a hash of ord values that point at the letters for the first letter.
  # Should include upper case and lower case letters
  # zip them together into a hash value
  # for the second and last letter: switch them around with an intermediary array of some kind.
  # use map to transform each word.

  # need a consistent return value for the map invocation
    # for each word, it should
    # - have every second and last letter switched
    # - have the first letter decoded by the hash key.
    # so put each value into an empty string for each one. That will make it easier.

# Algorithm:
  # CONSTANT: zip the ord values of 'a' to 'z' and 'A' to 'Z' with the letters themselves into a hash.
  #

  # MAIN METHOD:
    # iterate over the string of words with map
    # for each word, split into an array of characters.
    # create an empty string here
    # for the first letter, add the value from the hash constant to the empty string
    # add the last letter next. add every character until the last character; should be the second character.
    # return the new string for the word.
    # join the words back into a sentence.

    # DECODE ORD METHOD:
      # take the word as an argument
      # iterate over the chars. If the character matches 1 - 9
      # select it out
      # join the array together into a string

      # need to switch first and last letter.
      # how do I switch the first and last letter?
      #

  # SWITCH SECOND AND LAST CHAR
  # select all chars that are not numbers
    # use an intermediary array to put the second / last char in
    # make the second char equal teh last char
    # make hte last char equal the second char

letters = ('a'..'z').to_a + ('A'..'Z').to_a
number_vals =  letters.map { |letter| letter.ord.to_s }
LETTER_VALS = number_vals.zip(letters).to_h

def decode_ord(word)
  nums = word.chars.select do |char|
    char.match?(/[0-9]/)
  end
  LETTER_VALS[nums.join]
end

def switch_sec_last(word)
  letters = word.chars.select { |char| char.match?(/[a-zA-Z]/) }
  letters[0], letters[-1] = letters[-1], letters[0]
  letters.join
end

# p switch_sec_last('102abc')

def decipher_this(sentence)
  deciphered_sent = sentence.split.map do |word|

    first_letter = decode_ord(word)
    remaining_chars = switch_sec_last(word)

    first_letter + remaining_chars

  end
  deciphered_sent.join(' ')
end

p decipher_this('72olle 103doo 100ya') == 'Hello good day'
p decipher_this('82yade 115te 103o') == 'Ready set go'

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"

# 37 min