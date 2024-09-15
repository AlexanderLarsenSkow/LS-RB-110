# input: string
# output: hash where keys represent lowercase letters in the string, values are the counts

# Rules:
  # create a hash from a string where the lowercase letters are counted
  # letter is the key
  # count is the value
  # don't take uppercase letters
  # don't take non_alphabetic characters

# Examples:
# expected = {'w' => 1, 'o' => 2, 'e' => 3, 'b' => 1, 'g' => 1, 'n' => 1} #
# p count_letters('woebegone') == expected # all lowercase

# expected = {'l' => 1, 'o' => 1, 'w' => 1, 'e' => 4, 'r' => 2,
#             'c' => 2, 'a' => 2, 's' => 2, 'u' => 1, 'p' => 2}
# p count_letters('lowercase/uppercase') == expected # don't care about non_alphabetic characters (/)

# expected = {'u' => 1, 'o' => 1, 'i' => 1, 's' => 1}
# p count_letters('W. E. B. Du Bois') == expected # don't take uppercase letters either

# p count_letters('x') == {'x' => 1}
# p count_letters('') == {}
# p count_letters('!!!') == {}

# Data Structures:
  # iterate over the unique string, since we don't want to add multiple of the same character
  # create a hash
  # if the current character is a lowercase letter, make it the key for the count of hte character in the hash

# Algorithm:
  # iterate over the unique characters in the string
  # if the character matches a lowercase letter, then put it in the hash.
  # the letter is the key; the count of hte letter in the og string is the value.
  # return the hash

def count_letters(string)
  string.chars.uniq.each_with_object({}) do |char, hash|
    hash[char] = string.count(char) if char.match?(/[a-z]/)
  end
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