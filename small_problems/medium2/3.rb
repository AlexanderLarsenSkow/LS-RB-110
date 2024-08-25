# Lettercase Percentage Ratio

# PEDAC

# Problem:
	# Expected Input: string
	# Expected Output: hash with 3 entries: lowercase, uppercase, and neither

	# Rules:
		# Explicit:
		  # Write a method that takes a string value
		  # It calculates the percentage of characters that are lowercase, uppercase, and neither
		  # And then it puts them in a hash.

		# Implicit:


# Examples:
  # letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
  # letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# Data Structure:
  # Hashes

# Algorithm:
  # Create an empty hash
  # Count the uppercase letters, convert to float, and divide that by the string size
  # Count the lowercase letters, convert to float, and divide that by string size
  # Count the characters that are neither and divide that by the string size
  # Put them all in the hash

# Code:

LETTERS = ('a'..'z').to_a
UPCASE_LETTERS = ('A'..'Z').to_a

def build_hash(key, value)
  hash[key] = value
end

def letter_percentages(string)
  percentages = {}
  upcount = 0
  lowcount = 0
  neither = 0

  string.each_char do |char|
    if UPCASE_LETTERS.include?(char)
      upcount += 1

    elsif LETTERS.include?(char)
      lowcount += 1

    else
      neither += 1
    end
  end
  percentages[:lowercase] = (lowcount.to_f / string.size) * 100
  percentages[:uppercase] = (upcount.to_f / string.size) * 100
  percentages[:neither] = (neither.to_f / string.size) * 100
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }