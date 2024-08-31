# Write a method that takes a string argument and returns a hash where the lowercase letters are the
  # keys
# The values are how many times that letter appears in the string

# Input: string
# Output: hash where keys are lowercase letters and values are counts of the letters

# Rules:
  # Add lowercase letters to hash as keys and the count of the letters as values
  # Don't add uppercase letters
  # Don't add the same letter again.
  # Don't add empty space
  # Only add letters

# Examples:
# expected = {'w' => 1, 'o' => 2, 'e' => 3, 'b' => 1, 'g' => 1, 'n' => 1} # as expected
# p count_letters('woebegone') == expected

# expected = {'l' => 1, 'o' => 1, 'w' => 1, 'e' => 4, 'r' => 2, # don't add duplicate letters, e only gets added once.
#             'c' => 2, 'a' => 2, 's' => 2, 'u' => 1, 'p' => 2}
# p count_letters('lowercase/uppercase') == expected

# expected = {'u' => 1, 'o' => 1, 'i' => 1, 's' => 1} # don't add empty space
# p count_letters('W. E. B. Du Bois') == expected

# p count_letters('x') == {'x' => 1}
# p count_letters('') == {}
# p count_letters('!!!') == {}

# Data Structures:
  # arrays and hashes
  # Create a constant array of the alphabet, for sure
  # add letters and counts to the hash. Return the hash.

# Algorithm:
  # PRE METHOD: create a constant alphabet
  # Create an empty hash called letter_count
  # Iterate through each char in the string.
  # if the hash doesn't have the character as a key and alphabet includes the characer
    # add the character as a key and the count of the character as the value
  # return the hash.

LETTERS = ('a'..'z').to_a

def count_letters(string)
  letter_count = {}

  string.chars.each do |char|
    if LETTERS.include?(char) && !letter_count.key?(char)
      letter_count[char] = string.count(char)
    end
  end
  letter_count
end

expected = {'w' => 1, 'o' => 2, 'e' => 3, 'b' => 1, 'g' => 1, 'n' => 1}
p count_letters('woebegone') == expected

expected = {'l' => 1, 'o' => 1, 'w' => 1, 'e' => 4, 'r' => 2,
            'c' => 2, 'a' => 2, 's' => 2, 'u' => 1, 'p' => 2}
p count_letters('lowercase/uppercase') == expected

expected = {'u' => 1, 'o' => 1, 'i' => 1, 's' => 1}
p count_letters('W. E. B. Du Bois') == expected

p count_letters('x') == {'x' => 1}
p count_letters('') == {}
p count_letters('!!!') == {}

