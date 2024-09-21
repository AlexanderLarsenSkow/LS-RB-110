# Input: integer value representing the year
# Output: integer value representing the number of Friday 13th's in the year

# Rules:
	# Find the number of Friday the 13th's in any given year
	# The year is greater than 1752 (Gregorian Calendar)

# Examples:
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# Data Structures:
	# basically go through the year and look at each date and day of the week
	# if a day and number date ever equal Friday and 13, add 1 to a variable.
	# return that variable at the end.

# Create a months array? Create new times based on this. Day, Month, Year

# Create constant number of days in the months
# [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
# iterate over each number. Create a range from 1 to the number.
# add 1 to the months at the start of iterating for each value
# if the day is Friday and the date is 13, add 1 to 13_count.

# Algorithm:
	# Create a constant month_days
	# MAIN METHOD:
		# iterate over month days
		# add 1 to the month
		# Create a range from 1 to the current number_of_days
		# Create a new time with the year, month, and day
		# if the day is Friday and the date is 13, add 1 to the 13_count variable
		# return 13_count at the end.

NUMBER_OF_DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def friday_13th(year)
	count_13ths = 0
	month = 0

	NUMBER_OF_DAYS.each do |day_number|
		month += 1

		(1...day_number).each do |date|
			current_date = Time.new(year, month, date)

			if current_date.friday? && date == 13
				count_13ths += 1
			end
		end
	end
	count_13ths
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2