# All Substrings
	# Trying to get a better solution for this problem.

# Algorithm:
	# Create a variable index equal to 0
	# Create a varibale slice equal to 1
	# Create an empty array
	# Take a slice of the array at index 0 from slice 1 and add to the empty array 
	# Add 1 to slice 
	# Add 1 to index when slice equals string size
	# Repeat until index is equal to the string size

def substrings(string)
	index = 0
	slice = 1
	result = []
	
	until index == string.size
			result << string[index, slice]
			slice += 1
		
		if slice == string.size + 1
			slice = 1
			index += 1
		end 
	end
	result.uniq
end 


p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]