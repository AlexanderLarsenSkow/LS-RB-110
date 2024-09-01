# Write a method taht returns true if teh input string is a pangram, false if not
# Pangram: a sentence that contains every letter in the alphabet.
# Case is irrelevent

# Input: string
# output: true or false depending on whether or not the string is a pangram

# Rules:
  # if the string is a pangram, return true
  # If not, return false
  # a pangram: the string contains every letter in the alphabet
  # case doesn't matter

# Examples:
# p is_pangram?('The quick, brown fox jumps over the lazy dog!') == true
# p is_pangram?('The slow, brown fox jumps over the lazy dog!') == false
# p is_pangram?("A wizard’s job is to vex chumps quickly in fog.") == true
# p is_pangram?("A wizard’s task is to vex chumps quickly in fog.") == false
# p is_pangram?("A wizard’s job is to vex chumps quickly in golf.") == true

# my_str = 'Sixty zippers were quickly picked from the woven jute bag.'
# p is_pangram?(my_str) == true

# Data Structures:
  # Arrays
  # Create constant of letters
  # if the string dwoncased doesn't include every letter, we return false
  # if the string downcased includes all the letters, we return true. downcase
  # all? on letters

# Algorithm:
  # Create a constant LETTERS with every lowercase letter
  # MAIN METHOD
    # create a downcased copy of the string
    # call all? on letters and check if string includes every letter
    # if all letters are accounted for, we return true, else false

def is_pangram?(string)
  ('a'..'z').all? { |letter| string.downcase.include?(letter) }
end


p is_pangram?('The quick, brown fox jumps over the lazy dog!') == true
p is_pangram?('The slow, brown fox jumps over the lazy dog!') == false # no c
p is_pangram?("A wizard’s job is to vex chumps quickly in fog.") == true
p is_pangram?("A wizard’s task is to vex chumps quickly in fog.") == false
p is_pangram?("A wizard’s job is to vex chumps quickly in golf.") == true

my_str = 'Sixty zippers were quickly picked from the woven jute bag.'
p is_pangram?(my_str) == true