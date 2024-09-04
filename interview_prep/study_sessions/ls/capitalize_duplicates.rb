=begin
Write a method that takes a string as an argument and returns a new string according to
the following rules:

If a letter occurs only once in the string, leave it unchanged
# 1 time unchanged

If a letter occurs more than once, capitalize the first and last occurrences of that letter in the string
# more than once, first and last capital

The input string will only contain lowercase alphabetic characters

# PEDAC

# Problem:
  # Input: String value 
  # Output: string value maybe with some capitals

  # Explicit Rules 
    # If there are no duplicates, leave the string unchanged
    # If there are duplicates, capitalize the first occurrence and the last occurrence
    # Assumption: all characters will be lowercase 

Examples:
p first_and_last_case('abc') == 'abc'
p first_and_last_case('aaabc') == 'AaAbc'
p first_and_last_case('aaabccbb') == 'AaABCCbB'
