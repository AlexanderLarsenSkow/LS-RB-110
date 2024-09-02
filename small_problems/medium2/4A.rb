# Matching Parentheses?

# Write a method that takes a string as an input and returns true if all parentheses in the string are properly balanced,
  # else false.
# balanced: '()'

# Input: string
# Output true or false based on whether the parentheses are evenly balanced

# Rules:
# return true if the parentheses are evenly balanced. Else return false
# an odd count of parentheses means return false
# an even count may be true, however, not necessarily in all cases
# if it ever starts with ), it is false
# the hardest test case is on 27:
  # ())(()

# Examples:
# balanced?('What (is) this?') == true # count even, first ( then )
# balanced?('What is) this?') == false # count odd
# balanced?('What (is this?') == false # count odd
# balanced?('((What) (is this))?') == true # even count
# balanced?('((What)) (is this))?') == false odd count
# balanced?('Hey!') == true # even count
# balanced?(')Hey!(') == false # even count, but starts with wrong parenthese )
# balanced?('What ((is))) up(') == false # odd count
# balanced?('What ())(is() up') == false #

# Data Structure:
  # Arrays
  # chars and select ever parentheses in the string and that's it
  # if every substring has (), then return true
  # parentheses are properly balanced if it starts with ( and ends with )
  # There is an even count, or the count of ( equals the count of )
  #

# can't take substrings because they can match a parenthese on the other side of the string

# Algorithm:
  # Select all the parentheses in the string
  # From there, we build an array of substring pairs with the matching pair from the parentheses array
    # METHOD
      # iterate from 0 to the size of the array - 2
      # take slice from 2
      # Add this slice to the array
      # return teh array

  # if all the elements have () inside, then we return true. Else, we return false
  
  
  # I looked at teh answer. I never would have figured out this solution. Reminds me to think more efficiently for the future.

def balanced?(string)
  parenth = 0
  string.each_char do |char|
    parenth += 1 if char == '('
    parenth -= 1 if char == ')'
    break if parenth < 0
  end
  parenth == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false

