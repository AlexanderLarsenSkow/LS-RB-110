# Grade Book

# PEDAC

# Problem:
	# Expected Input: 3 integer values standing for grades
	# Expected Output: string value representing letter grade
	
	# Rules:
		# Explicit:
			# Write a method that takes 3 grade integer values, computes their average, and gives the letter grade based on the average.
		
		# Implicit:
			# A is 90 - 100
			# B is 80 - 89
			# C is 70 - 79
			# D is 60 - 69
			# F is 0 - 59
	
# Examples:
	# get_grade(95, 90, 93) == "A"
	# get_grade(50, 50, 95) == "D"

# Data Structure: Hash, maybe array

# Algorithm:
	# Create a hash constant where the keys are integers in a range pointing at string values representing the letter grades.
	# INSIDE THE METHOD, create an empty string variable
	# Add the 3 grade integers together and divide by 3.
	# If the value is included in the key range inside the hash constant, then return the value it references.
	
# Code:

GRADE_SYSTEM = {
	(90..100) => 'A',
	(80..89) => 'B',
	(70..79) => 'C',
	(60..69) => 'D',
	(0..59) => 'F'
  }

def get_grade(grade1, grade2, grade3)
	grade = ''
	grade_average = (grade1 + grade2 + grade3) / 3
	
	GRADE_SYSTEM.each_pair do |grade_range, letter_grade|
		grade = letter_grade if grade_range.include?(grade_average)
	end 
	grade
end 

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"