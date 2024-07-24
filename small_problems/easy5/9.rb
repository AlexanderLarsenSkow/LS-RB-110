# Daily Double 

# Write a method that takes every consecutive character in a string and collapses them down into one character.
# You can't use String #squeeze

# Understanding the Problem:
	# Expected Input: String with multiple consecutive characters of the same value.
	# Expected Output: String with multiple characters changed to one value.
	
	# Rules:
		# Can't use # squeeze
		# Must remove consecutive characters
	
# Examples
	# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
	# crunch('4444abcabccba') == '4abcabcba'
	# crunch('ggggggggggggggg') == 'g'
	# crunch('a') == 'a'
	# crunch('') == ''
	
# Data Structure:
	# Array and Split
	
# Algorithm:
	# Split the string into an array
	# Make an empty array 
	# Push all the values into the array unless the last value in the new array is the same character being pushed in.
	# Join the new array
	# Return the new array.
	
	def crunch(string)
		arr = string.split('')
		result = []
		
		arr.each do |char|
			result << char unless result.last == char
		end 
		result.join 
	end 
	
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''