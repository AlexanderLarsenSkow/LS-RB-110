# Welcome Stranger

# PEDAC

# Problem:
	# Expected Input: array and hash
	# Expected Output: Greeting string 
	
	# Rules:
		# Explicit: 
			# Given an input array of someone's name
			# And given an input hash with their occupation and job title
			# Return a greeting that mentions their full name and their occupation and job title
		
		# Implicit:
			# Output value
	
# Examples:
	# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
	# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# Data Structure: Arrays and hashes

# Algorithm:
	# Create a greeting variable equal to an empty string
	# Iterate over the array
	# Iterate over the hash values
	# Set Greeting equal to a greeting string that mentions their name, job title, and occupation.

# Code:

def greetings(array, hash)
	"Hey #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end 
	
p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."