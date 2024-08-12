# 1000 Lights Finished Attempt

# PEDAC

# Problem:
	# Expected Input: number
	# Expected Output: Array of numberd lights that are left on
	
	# Rules:
		# Explicit:
			# Return an array from lights that are left on, starting with just a number
			# On the first pass, all the lights are switched off
			# On the second pass, it takes all multiples of 2
			# Then switches off all multiples of 3
			# Then 4
			# Then 5
			# And so on
		
		# Implicit:
	
# Examples:
	# 1000_lights(5) => [1, 4]
	# first round => [1, 2, 3, 4, 5] on
	# Second round => [2, 4] off, [1, 3, 5] on
	# Third round  => [2, 3, 4] off, [1, 5] on
	# Fourth round => [2, 3] off, [1, 4, 5] on
	# Fifth round => [2, 3, 5] off, [1, 4] on

# Data Structure
	# Hashes / Arrays 
	
# Algorithm:
	
	# BUILD HASH METHOD
		# Create an empty hash
		# Take the number and a create a range from 1 to the number.
		# Iterate through the range
		# Set every value in the range as the keys, each pointing at the string "On"
		# Return the hash
		
	# MAIN METHOD:
		# Take the hash you build previously
		# Create a variable called divisor equal to 2
		# While divisor is less than the number, Switched the elements that are multiples of divisor to "on" or "off"
			# depending on what they point at.
		# Increment divisor by 1.
		# Repeat until divisor is more than the number.
		# Select the keys in the hash that point to "on" in the values.
		
	# Code

	def lights_on_hash(number)
		result = {}
		(1..number).each do |num|
			result[num] = 'On'
		end 
		result
	end 
		
	p lights_on_hash(5)
	
	def thousand_lights(number)
		hash = lights_on_hash(number)
		divisor = 2
		
		while divisor <= number
			hash.each_pair do |num, state|
				if num % divisor == 0 && state == 'On'
					hash[num] = 'Off'
				
				elsif num % divisor == 0 && state == 'Off'
					hash[num] = 'On'
				end 
			end 
			divisor += 1 
		end 
		hash.select { |number, state| state == 'On' }.keys
	end 
		
		
	p thousand_lights(5)	
	p thousand_lights(10)
	p thousand_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
	