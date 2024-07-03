# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

=begin 

Input:
-Expected input is a string object

Output: 
-array of all substrings that are palindromes. Not the same object.

Rules: 
-Returns a substring only if it is a palindrome (reads the same forwards as backwards.)
-Substrings can be in any order, not just separated by words.
-Is case sensitive "Dad is not a palindrome. dad is."

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

Data Structure: Array, since that's what we want to return. 

Algorithm: 
- Initialize a result variable to reference an empty array object.
- Create an array named substring_arr that contains all of the substrings of the input string that 
	are at least 2 characters long.
- Loop through the words in the substring_arr array.
- If the word is a palindrome, append it to the empty array.

# Substrings Method Algorithm 
	
	# 'halo' String Example Input: => ['ha', 'hal', 'halo', 'al', 'alo', 'lo']
	
- For each starting index from 0 through the next to last index position (because we don't have any valid substrings start
	with the last character)
- For each susbtring length from 2 until there are no substrings of that length
- Extract the substring of the indicated length starting at the indicated index position 
- End of inner loop
- End of outer loop

=end 

def palindrome_me(string)
	result = []
	substring_arr = substring(str)
	
	substring_arr.each do |i| 
		result << i if is_palindrome?(i)
	end
	result
end

def substring(str)
	result = []
	index = 0
	count = 2
	
	loop do
		result << str[index, count]
		count += 1
		
		if count > str.size 
			count = 2
			index += 1
		end 
		
		break if str[index] == str[-1] 
	end
		result.uniq
end

p substring('ala')

#p palindrome_me('dad and mom')