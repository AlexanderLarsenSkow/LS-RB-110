# Staggered Caps Part 2 

# This time, change the method definition so that it ignores non-letter numbers in its upcasing/downcasing.

# Algorithm:
	# make an empty array
	# create a variable equal to 0
	# add 1 to the variable everytime a character appears in either A-Z or a-z arrays during iteration
	# if the variable val is even, add an upcased character
	# if odd, add a downcased character
	# If neither, add a regular character.

UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a

def staggered_case(string)
	result = []
	letter_count = 0
	
	string.split('').each do |char|
		if letter_count.even?
			result << char.upcase
		
		elsif letter_count.odd?
			result << char.downcase
		
		else 
			result << char
		end 
	
		if UPPERCASE_LETTERS.include?(char) || LOWERCASE_LETTERS.include?(char)
			letter_count += 1
		end 
	end 
	result.join
end 

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'