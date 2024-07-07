# Take the problem from 1.rb and push the values into an array, then sort that array by element #length

# Data Structures: Array

# Algorithm: 
	# 1. Create an empty array
	# 2. Push the strings into the array
	# 3. Sort the array by length
	# 4. Return short + long + short

def short_long_short(string1, string2)
	array = [string1, string2]
	sorted = array.sort {|a, b| a.length <=> b.length }
	sorted[0] + sorted[1] + sorted[0]
end 
p 1 <=> 2
p 2 <=> 1

	p short_long_short('abc', 'defgh') == "abcdefghabc"
	p short_long_short('abcde', 'fgh')  == "fghabcdefgh"
	p short_long_short('', 'xyz') == "xyz"
	p short_long_short('baker', 'cookie')
	p short_long_short('eaten', 'man')
	p short_long_short('dog', 'eat')