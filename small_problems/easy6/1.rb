# Cute Angles

# Write a method that takes a floating point number? that represents an angle between 0 and 360 degrees
	# returns a string that represents that angle in degrees, minutes, and seconds.
	# Use a degree symbol to rep degrees, a single quote to rep minutes, and a double quote to rep seconds.
	# A degree has 60 min
	# A minute has 60 sec

# Understanding the Problem:
	# Expected Input: float number
	# Expected Output: string of numbers with symbols

	# Rules:
		# Degrees have degree symbol
		# Minutes have single quote
		# Seconds have double quotes
		# There are 60 minutes in one degree
		# There are 60 seconds in one minute

# Examples:
	# dms(30) == %(30°00'00")
	# dms(76.73) == %(76°43'48")
	# dms(254.6) == %(254°36'00")
	# dms(93.034773) == %(93°02'05")
	# dms(0) == %(0°00'00")
	# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Data Structure: Not sure yet

# Algorithm:
	# 1. Create variable minutes that is degrees * 60
	# 2. Create variable seconds that is minutes * 60
	# 3. Minus the integer value from the float to get the decimal
	# 4. Multiply this value by 60 to get the minutes
	# 5. Minus the integer value from the float to get the decimal
	# 6. Multiply by 60 to get seconds
	# 7. Return the values with sprintf or format

# Code:

DEGREE_SYM = "\u00B0"

def dms(float)
	degree = float.to_i
	degree = 0 if degree == 360

	minutes_decimal = ((float - degree) * 60) # 36
	minutes_decimal = 0 if float == 360
	minutes_integer = minutes_decimal.to_i
	minutes_display = minutes_decimal.round

	seconds = (minutes_decimal - minutes_integer) * 60
	seconds_integer = seconds.floor

	"#{degree}#{DEGREE_SYM}#{minutes_display}'#{seconds_integer}\""
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
