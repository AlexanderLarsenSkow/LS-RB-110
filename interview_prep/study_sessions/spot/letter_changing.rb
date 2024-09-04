=begin
Write a method that takes a string as an argument and returns a new string with
every letter character replaced with the 3rd letter following it in the alphabet
('a' becomes 'd', 'b' becomes 'e', etc).

Maintain the case of the original letter. Loop back to the beginning of the alphabet
if the 3rd letter is past the end ('x' becomes 'a', 'Y' becomes 'B', etc).
Leave any non-letter characters unchanged.


# Input: String object
# Output: new string with every character replaced with the 3rd character after it

# Rules:
  # Replace every character, if it's a letter, with the 3rd letter after it.
    # For examples: 'a' => 'd', 'b' => 'e'
  # for 'x', 'y', 'z' => 'a', 'b', 'c'
  # Do not change numbers
  # Do not change case

Examples:
p letter_changes('abc') == 'def' # standard case
p letter_changes('WxY') == 'ZaB' # case unchanging
p letter_changes('364.39') == '364.39' # numbers don't change
p letter_changes("JaneDoe37@gmail.com") == 'MdqhGrh37@jpdlo.frp' # complex case
=end

# Data Structures:
  # Arrays and Hashes
  # Create two arrays of values: lowercase letters and uppercase letters
  # Use these to create a hash with the index position slightly changed.
  # So each letter should point at a letter 3 index point after them.
  # if the character is x, y or z, they point at a b c.
  # Do the same for the uppercase array

  # After this, we want to iterate through the characters in teh strings
  # If the character is a key in the hash, replace it with the value.
  # Rejoin teh string together at the end and return it.

# Algorithm:
  # Create two arrays of lowercase and uppercase letters wiht ranges
  # create hash method
    # input: array
    # every element should point at the element at their index + 3. so each_with index here.
    # for x, y, z, they point at index, 0, 1, 2. we can reset index to 0 for x.
    # if the letter downcase is x, then reset the index to 0.
    # return this hash.

  # MAIN METHOD
    # iteraet through the characters in the string with chars
    # if the character is a key in the hash, repalce teh character with its value.
    # rejoin and return the new string


LETTERS = ('a'..'z').to_a
BIG_LETTERS = ('A'..'Z').to_a

def create_hash(letters)
  letter_hash = {}

  letters.each_with_index do |letter, index|
    case letter.downcase
    when 'x'
      index = 0
      letter_hash[letter] = letters[index]
    when 'y'
      index = 1
      letter_hash[letter] = letters[index]
    when 'z'
      index = 2
      letter_hash[letter] = letters[index]
    else
      letter_hash[letter] = letters[index + 3]
    end
  end

  letter_hash
end

def letter_changes(string)
  big_letters = create_hash(BIG_LETTERS)
  letters = create_hash(LETTERS)

  changes = string.chars.map do |char|
    if big_letters.key?(char)
      char = big_letters[char]

    elsif letters.key?(char)
      char = letters[char]

    else
      char
    end
  end
  changes.join
end

p letter_changes('abc') == 'def' # standard case
p letter_changes('WxY') == 'ZaB' # case unchanging
p letter_changes('364.39') == '364.39' # numbers don't change
p letter_changes("JaneDoe37@gmail.com") == 'MdqhGrh37@jpdlo.frp' # complex case
