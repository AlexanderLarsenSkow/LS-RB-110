# Leap Years

# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. 
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Understanding the Problem:
	# Expected Input: year greater than 0
	# Expected Output: true if year is a leap year, false if not.
	
	# Rules:
		# - Year input is greater than 0
		# - If the year is evenly divisble by 4, then it is a leap year.
		# - UNLESS, it is also evenly divisble by 100, 
		# - WHICH is only a leap year if it is evenly divisble by 400.
		
# Examples:
	
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# Data Structures

# Algorithm:
	# 1. Check to see if the year can be divided evenly by 400. Return true
	# 2. If it can't, check to see if it can be divied evenly by 100. Return false
	# 3 Check to see if the year can be divided evenly by 4.
	# 4. Return the result.
	
# Code

def leap_year?(year)
	if year % 400 == 0
		true 
	elsif year % 100 == 0
		false 
	else 
		year % 4 == 0
	end 
end 
	
	
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true