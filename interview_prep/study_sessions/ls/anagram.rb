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
	# anagram_difference('ab', 'ba') == 0 # 'a' or 'b' # => shows us we need to take more than the size.
 	# anagram_difference('ab', 'cd') == 4 # '' # => take out all the letters and repalce them with hte new letters
	# anagram_difference('aab', 'a') == 2 # 'a'
	# anagram_difference('a', 'aab') == 2 # 'a'
	# anagram_difference('codewars', 'hackerrank') == 10

# Data Structure: Arrays

# Algorithm:
	# Create a number to store the number needed to take out, set it to 0.
	# Check to see if they are anagrams (sort)
	# If not, remove letters from one of the strings until it has the same letters as the second string
	# THen, add the letters that it does not have from teh second string.
	# Every time you add or delete a letter, add 1 to the number variable.
	# When the sorted strings are equal, return this number.

	def is_anagram?(string1, string2)
		string1.split('').sort == string2.split('').sort
	end

	p is_anagram?('veil', 'evil')


def anagram_difference(string1, string2)
	different_chars = []
	temp_char_count = []

	string1.each_char do |char|
		#temp_char_count.push(string1.count(char), string2.count(char))
		if string1.count(char) != string2.count(char)
 			different_chars << char
		end
		#temp_char_count - []
	end

	string2.each_char do |char|
		#temp_char_count.push(string1.count(char), string2.count(char))
		if string1.count(char) != string2.count(char)
			different_chars << char
		end
	#	temp_char_count = []
	end

	different_chars#.size
end


p anagram_difference('aab', 'aabb')
#p anagram_difference('', '') == 0
#p anagram_difference('a', '') == 1 # ''
#p anagram_difference('', 'a') == 1 # ''
#p anagram_difference('ab', 'a')== 1 #'a'
#p anagram_difference('ab', 'ba') == 0 # 'a' or 'b'
#p anagram_difference('ab', 'cd') == 4 # ''
#p anagram_difference('aab', 'a') == 2 # 'a'
#p anagram_difference('a', 'aab') == 2 # 'a'
p anagram_difference('codewars', 'hackerrank') #== 10
#p anagram_difference("oudvfdjvpnzuoratzfawyjvgtuymwzccpppeluaekdlvfkhclwau", "trvhyfkdbdqbxmwpbvffiodwkhwjdjlynauunhxxafscwttqkkqw") #== 42
#p anagram_difference("fcvgqognzlzxhmtjoahpajlplfqtatuhckxpskhxiruzjirvpimrrqluhhfkkjnjeuvxzmxo", "qcfhjjhkghnmanwcthnhqsuigwzashweevbegwsbetjuyfoarckmofrfcepkcafznykmrynt") #== 50




