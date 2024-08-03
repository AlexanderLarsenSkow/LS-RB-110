# Rotate String

# Algorithm: 
	# put the string into an array of characters
	# Call the rotate method on the array
	# Join the new string together
	
# Code:

def rotate_string(string)
	string[1..-1] + string[0]
end 

p rotate_string('hello') 