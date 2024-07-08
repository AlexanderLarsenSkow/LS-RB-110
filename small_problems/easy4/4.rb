# Leap Years

# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. 
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.
# Now, check there is a dividing line at 1752, where they switched calendars. Before this, every year divisble by was a leap
# year, full stop.

# Understanding the Problem:
	# Expected Input: year greater than 0
	# Expected Output: true if year is a leap year, false if not.
	
	# Rules:
		# - Year input is greater than 0
		# - If the year is evenly divisble by 4, then it is a leap year.
		# - UNLESS, it is also evenly divisble by 100, 
		# - WHICH is only a leap year if it is evenly divisble by 400.
		# - if the year was before 1752, then it's a leap year if it can be evenly divided by 4 alone.
		
# Examples:
	
#leap_year?(2016) == true
#leap_year?(2015) == false
#leap_year?(2100) == false
#leap_year?(2400) == true
#leap_year?(240000) == true
#leap_year?(240001) == false
#leap_year?(2000) == true
#leap_year?(1900) == false
#leap_year?(1752) == true
#leap_year?(1700) == true
#leap_year?(1) == false
#leap_year?(100) == true
#leap_year?(400) == true

# Data Structures

# Algorithm:
	# 1. Check to see if the year is before, equal to, or after 1752.
	# 2. If before 1752, return true if the year can be evenly divided by 4.
	# 3. Now, if the year is after 1752, Check to see if the year can be divided evenly by 400. Return true
	# 4. If it can't, check to see if it can be divied evenly by 100. Return false
	# 5 Check to see if the year can be divided evenly by 4.
	# 6. Return the result.
	
def leap_year?(year)
	if year <= 1752
		year % 4 == 0
	
	else
		if year % 400 == 0
			true 
		elsif year % 100 == 0
			false
		else
			year % 4 == 0
		end 
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true