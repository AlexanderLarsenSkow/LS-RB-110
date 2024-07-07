# Write a method that takes two strings as arguments, determines which string is longer and which string is shorter, and 
# then concactenates the shorter string, the longer string, and the short string again. short --> long --> short

# Understanding the Problem:
	# Expected Input: two strings
	# Expected Output: concactenated string
	
	# Rules: 
		# - The long string is added to the short string.
		# - the short string is added to the new string.
		
# Examples:
	# short_long_short('abc', 'defgh') == "abcdefghabc"
	# short_long_short('abcde', 'fgh') == "fghabcdefgh"
	# short_long_short('', 'xyz') == "xyz"
	# short_long_short('baker', 'cookie') == 'bakercookiebaker'
		
	# Data Structures: 
		# Strings
		
	# Algorithm
		# 1. Compare the strings
		# 2. Assign a variable 'short' to the short version - conditional
		# 3. Assign a variable 'long' to the long version - conditional
		# 4. Append the long string to the short string
		# 5. Append the short string to the short-long string
		# 6. Return the result.
		
	def short_long_short(string1, string2)
		long = ''
		short = ''
		
		if string1.size > string2.size
			long = string1
			short = string2
		else 
			long = string2 
			short = string1
		end 
	
		short += long += short 	
	end 
	
	p 'run'.size > 'eat'.size
	
	p short_long_short('run', 'eat')
	
	p short_long_short('abcde', 'fgh') # => 'fghabcdefgh'
	p short_long_short('ab', 'a')  == 'aaba' # => 'aaba'
	
	p short_long_short('abc', 'defgh') == "abcdefghabc"
	p short_long_short('abcde', 'fgh')  == "fghabcdefgh"
	p short_long_short('', 'xyz') == "xyz"
	p short_long_short('baker', 'cookie')
	
	