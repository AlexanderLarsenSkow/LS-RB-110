# Determine the ASCII table value of each string. Use #ord to determine the value

# Understanind the Problem:
	# Expected Input: string value 
	# Expected Output: integer value 
	
	# Rules: 
		# NA
		
# Test Cases
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# Data Types: Array

# Algorithm:
	# 1. Split the strings into arrays by character
	# 2. Assign a variable to 0 
	# 3. Iterate through the array with each
	# 4. Add the value of ord of each character to the variable
	# 5. Return the variable
	
# Code

def ascii_value(string)
	ord_total = 0
	string.each_char { |char| ord_total += char.ord} 
	ord_total
end 

p ascii_value('Four score')

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0