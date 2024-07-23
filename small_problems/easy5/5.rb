# Clean up the Words

# Understanding the Problem
	# Given a string with letters and an assortment of non-alphabetic characters, write a method that 
	# returns a string with all the non-alphabetic characters replaced with spaces. If more than one 
	# non-A character appear in a row, they should be replaced by one space, not one for each character.
	
	# Expected Input: Strings with non-alphabetic characters
	# Expected Output: Strings with only alphabetic characters
	
	# Rules:
		# Every non-alphanumeric character replaced by space.
		# Characters in a row can't be replaced by more than one space: there are never consecutive spaces
		
	# Questions:
		# What about numerics?
		# 
		
# Examples:
		# cleanup("---what's my +*& line?") == ' what s my line '
			
# Data Structure:
		# Clearly an Array
	
# Algorithm
	# 1. Create an array of acceptable values: a-z A - Z
	# 1. Split the strings into an array.
	# 2. Check every character for non-alphabetic characters.
	# 3. Replace these characters with spaces.
			# 1. You can't replace 1 character with 1 space: you can only replace a grouping of characters with 1 space.
			# How do I tell it to recognize a grouping of bad characters?
			# RegEx maybe, but I don't know how to do it. It must be solvable in another way.
		
	# 4. After transforming the array, join the values together.

		# What about partition? That could split everything into two separate arrays.
		# But I don't want to do that. That could cause problems. I don't want them separate;
		# I just want to replace the entire group of bad characters with a ' '
	
# Code
	
	def cleanup(bad_string)
		acceptable_characters = ('a'..'z').to_a
		acceptable_characters << ('A'..'Z').to_a
		acceptable_characters.flatten!
		
		result = []

		bad_string.each_char do |char|
			if acceptable_characters.include?(char)
				result << char
			else 
				result << ' '
			end
		end 
		result.join.squeeze(' ')
	end 
	
	p cleanup("---what's my +*& line?") == ' what s my line '