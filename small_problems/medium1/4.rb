# 1000 Lights

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

# Data Structure:
	# Array

# Algorithm:
	# Create switched_on, switched_off variables equal to empty arrays
	# Take the range from 1..number and convert it to an array
	# Create a variable divisor equal to 2
	# Iterate through this array with partition
	# Partition the array based on whether or not the elements are evenly divisible by the divisor
	# return the switched_on array
 

# Code:
require 'pry-byebug'

def thousand_lights(number)
	switched_off = (1..number).to_a
	switched_on = []
	divisor = 1
	
	while divisor <= number
		binding.pry
		if divisor != 2
			switched_off.each do |num|
				switched_on << num if num % divisor == 0
			end 
		end 
				
		1.upto(number) do |num| 
			switched_off.delete(num) if switched_on.include?(num) 
		end 
		
		if divisor > 1		
			switched_on.each do |num|
				switched_off << num if num % divisor == 0
			end
		end 
				
		1.upto(number) do |num|
			switched_on.delete(num) if switched_off.include?(num)
		end 
		
		divisor += 1
	end
	switched_on
end

p thousand_lights(5) #== [1, 4]
#p thousand_lights(10) #== [1, 4, 99]