# Matching Parentheses?

# PEDAC

# Problem:
	# Expected Input: String value with parentheses
	# Expected Output: true or false based on whether they are properly balanced (equal characters between them)
	  # no parentheses returns true.

	# Rules:
		# Explicit:
		  # Write a method that returns true or false if parentheses are properly balanced. That is, they have equal distance between.
		  # If there are no parentheses, then return true.

		# Implicit:
		  # If the parentheses count is odd for ")" or "(", return false.
		  # If the count is even, there are always two to a pair.
		  #


# Examples:
  # balanced?('What (is) this?') == true
  # balanced?('What is) this?') == false
  # balanced?('What (is this?') == false

# Data Structure:
  # Array
  # Thinking we can split based on parentheses. We'll need a couple different split criteria: ) and (
  # What is we split by (, the first parenthe? Then we can check to see the counts.
  # ( should always be at even indicies in this new string. ) should always be at even counts.

# Algorithm:
  # Make a var parentheses count that counts how many parentheses there are
  # If there is an odd number, then return false. If not, move into the method.

  # Split string into elements divided by the parentheses and select only the parentheses.

    # We need to check these values now. So if every pair has () () (), then it returns true.
    # However, if one of the pairs is off, like () )( (), it returns false.

  # If the index count of ( is even, return true. Else, false.

# Code:

PARENTHESES = ['(', ')']

def balanced?(string)
  index = 0
  if string.count('()').odd?
    return false

  else
    parenths = string.split('').select { |char| PARENTHESES.include?(char)}
    !parenths.any? do |parenth|
      parenth == '(' && index.odd?
      index += 1


    end
  end
end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') == false
 p balanced?('What (is this?') == false
 p balanced?('((What) (is this))?') == true
 p balanced?('((What)) (is this))?') == false
 p balanced?('Hey!') == true
 p balanced?(')Hey!(') == false
 p balanced?('What ((is))) up(') == false
 p balanced?('What ())(is() up') == false