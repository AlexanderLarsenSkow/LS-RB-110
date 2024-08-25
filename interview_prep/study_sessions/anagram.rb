# Problem:
	# Expected Input: 2 strings 
	# Expected Output: Integer that shows the number of letters needed to make an anagram.
	
	# Rules:
		# Explicit: 
			# Write a method that takes 2 strings and tells you how many characters you need to remove to make an anagram
		
		# Implicit:
			# An anagram is a word that can be rearranged into another word.
			# So two strings are anagrams if they contain the same letters in different orders.
			# Removing means deleting.
			
# Examples:
	# anagram_difference('', '') == 0
	# anagram_difference('a', '') == 1 # ''
	# anagram_difference('', 'a') == 1 # ''
	# anagram_difference('ab', 'a') == 1 #'a'
	# anagram_difference('ab', 'ba') == 0 # 'a' or 'b'
	# anagram_difference('ab', 'cd') == 4 # ''
	# anagram_difference('aab', 'a') == 2 # 'a'
	# anagram_difference('a', 'aab') == 2 # 'a'
	# anagram_difference('codewars', 'hackerrank') == 10 
	
# Data Structure: Arrays

# Algorithm:
	# Split string 1 by char into an array
	# split string 2 by char into a second array
	# make a result variable
	# Compare each character in each array to one another.
	# If the other array does not contain a character in the first array, remove that character
	# If you remove a character, add 1 to the result variable.
	# If the count of the of a character in one array is different from the count of the same character in the second array, 
		# add that value to the character_to_delete variable.
	# Continue until the arrays have the same characters in different or the same order.

require "pry"
	
def anagram_difference(string1, string2)
	array1 = string1.split('')
	array2 = string2.split('')
	characters_to_delete = 0
	
	array1.each do |char| 
		characters_to_delete += 1 if !array2.include?(char)
		count1 = array1.count(char)
		count2 = array2.count(char)
		
		if count1 > count2 && array2.include?(char)
			count = count1 - count2
		elsif count2 > count1
			count = count2 - count1
		else 
			count = 0
		end 
		characters_to_delete += count 
		array1.shift if count1 > 1 
	end 
	
	array2.each do |char|
		characters_to_delete += 1 if !array1.include?(char)
	end 
	
	characters_to_delete
end 
	
p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1 # ''
p anagram_difference('', 'a') == 1 # ''
p anagram_difference('ab', 'a')== 1 #'a'
p anagram_difference('ab', 'ba') == 0 # 'a' or 'b'
p anagram_difference('ab', 'cd') == 4 # ''
p anagram_difference('aab', 'a') == 2 # 'a'
p anagram_difference('a', 'aab') == 2 # 'a'
p anagram_difference('codewars', 'hackerrank') == 10 
p anagram_difference("oudvfdjvpnzuoratzfawyjvgtuymwzccpppeluaekdlvfkhclwau", "trvhyfkdbdqbxmwpbvffiodwkhwjdjlynauunhxxafscwttqkkqw") #== 42
p anagram_difference("fcvgqognzlzxhmtjoahpajlplfqtatuhckxpskhxiruzjirvpimrrqluhhfkkjnjeuvxzmxo", "qcfhjjhkghnmanwcthnhqsuigwzashweevbegwsbetjuyfoarckmofrfcepkcafznykmrynt") #== 50
	



