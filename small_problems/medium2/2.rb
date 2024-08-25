# Now I know my ABC's

# PEDAC

# Problem:
	# Expected Input: string
	# Expected Output: true or false boolean

	# Rules:
		# Explicit:
		  # Taking blocks of letters, test if you can spell the string with only those letters in the block.
		  # You can only use each letter one time. Reusing letters is not allowed.

		# Implicit:
		  # popping letters out sounds like it could work...

# Examples:
  # B:O   X:K   D:Q   C:P   N:A
  # G:T   R:E   F:S   J:W   H:U
  # V:I   L:Y   Z:M

  # "BATCH" # => true
  # "BUTCH" # => false

# Data Structure:
  # Array

# Algorithm:
  # Define a constant hash with every letter from the blocks.
  # Create a variable word equal to an empty string
  # Create a deep copy of the constant.
  # Take the string and iterate through each character.
  # If the constant array doesn't have the character, return false
  # If it does, pop out the character from the map array and add it to the word var
  # Check if the word is equal to the string

  # Create Blocks PEDAC
    # Input: the blocks constant
    # Output: Should be a nested array with subarrays including every character uppercase and lowercase.

    # Example:
      # [["B", "O", "b", "o"]]

    # Data Structure:
      # Arrays and hashes

    # Algorithm
      # Transform the constant into a deep copy.
      # Now we need to add the lowercase elements to this array.

# Code:

BLOCKS = {"B" => "O", "X" => "K", "D" => "Q", "C" => "P", "N" => "A",
          "G" => "T", "R" => "E", "F" => "S", "J" => "W", "H" => "U",
          "V" => "I", "L" => "Y", "Z" => "M"
}


def block_word?(string)
  blocks = BLOCKS.map { |block| block.dup }
  string = string.upcase
  word = ''

  string.each_char do |char|
    blocks.each do |block|

      if block.include?(char)
        word += char
        blocks.delete(block)
      end
    end
  end
  word == string
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('apples') == false
p block_word?('Baby') == false