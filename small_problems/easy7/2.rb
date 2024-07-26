# Lettercase Counter

# PEDAC 

# Understanding the Problem:
	# Expected Input: String
	# Expected Output: Hash with 3 keys / 3 values
	
	# Rules
		# Explicit:
			# Given a string, return a hash value with the number of lowercase letters as a value, the number of uppercase letters 
			# as the second value, and the number of characters that are neither as the 3rd value.
			
			# Implicit: 
				# 3 keys are symbols
				# 3 keys: :lowercase, :uppercase, :neither
				
	# Data Structure:
		# Array for the string values and for the arrays for the letter collections
		# Hash return value 
		
	# Algorithm:
		# 1. Create a collection for uppercase letters
		# 2. Create a collection for lowercase letters
		# 3. METHOD START: 
			# Create an empty hash
			# Create 3 variables: lowercase, uppercase, and neither equal to 0
			# Split the string into an array of characters
			# Iterate over the new array.
			# If the character is inside the uppercase collection, add 1 to uppercase
			# If the character is inside the lowercase collection, add 1 to lowercase
			# If the character is inside neither collection, add 1 to neither.
			# Add each value to the result hash with the symbols as keys.
	
UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a
	
def letter_case_count(string)
	result = {}
	uppercase, lowercase, neither = 0, 0, 0
	
	string.each_char do |char|
		if UPPERCASE_LETTERS.include?(char)
			uppercase += 1 
		elsif LOWERCASE_LETTERS.include?(char)
			lowercase += 1
		else 
			neither += 1
		end 
	end 
	result[:uppercase] = uppercase
	result[:lowercase] = lowercase
	result[:neither] = neither
	result
end 

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
		