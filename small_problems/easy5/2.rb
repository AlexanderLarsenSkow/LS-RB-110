# After Midnight

# Understanding the Problem:
	# Write a method that takes an integer value and tells you the time in hours and minutes for the day.
	# Positive numbers go forward, starting at 00:00, midnight, for 0 and 23:59 for -1.
	# Return the time for the minutes integer input
	
	# Expected Input: integer
	# Expected Output: time string
	
	# Rules:
		# Can't use time / Date Classes
		# Return value must be string in hh:mm format
		# Have to increase the 10's place for minutes every 10 min
		# Have to increase the 1's place for hours every 60 min
		# Increase the 10's place for hours every 10 hours
		# Max is 23:59
	
	
# Test Cases

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# Data Structure: not sure yet 

# Algoirithm:
	# 1. Assign minutes variable to 0
	# 2. Assign hours variable to 0
	# 3. Increment minutes by 1
	# 4. Increment hours by 1 every time minutes can be evenly divided by 60
		# Reassign minutes to 0 every time this happens too
	# 5. Stop incrementing when minutes are equal to the input number
	# 6. Return hours and minutes together
	
	# Negative Minutes Algorithm:
		# 1. # set count to 0
		# 2. set minutes to 60
		# 3. set hours to 24.
		# 4. Minus 1 to minutes and count until count is equal to the number input.
		# 5. Minus 1 to hour every time minutes reaches 59; Minutes reset to 59 when it reaches -1 
	
# Code: 

TIME_DIGITS = ['00', '01', '02', '03', '04', '05', '06', '07', '08', '09']
# Array # => 

def count_up_to_time(number)
	count = 0
	minutes = 0
	hours = 0
	
	loop do 
		break if count == number

		count += 1
		minutes += 1
		if minutes % 60 == 0
			hours += 1
			minutes = 0
		end
		hours = 0 if hours == 24
	end
		[hours, minutes]
end 

def count_down_to_time(number)
	count = 0
	minutes = 60
	hours = 24
	
	loop do 
		break if count == number
		minutes -= 1
		minutes = 59 if minutes == -1
		hours -= 1 if minutes == 59
		hours = 23 if hours == -1
		count -= 1
	end
	[hours, minutes]
end 

def time_of_day(number)
	if number >= 0
		array = count_up_to_time(number)
	else 
		array = count_down_to_time(number)
	end 
	hours = array[0] # => 20
	minutes = array[1]
	
	hours = TIME_DIGITS[hours] if hours < 10
	minutes = TIME_DIGITS[minutes] if minutes < 10
	
	"#{hours}:#{minutes}" # String interpolation
end 

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(-1450) == "23:50"
