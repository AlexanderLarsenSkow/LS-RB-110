MINUTES_PER_DAY = 1440 
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def after_midnight(time)
	hours = time[0, 2].to_i
	minutes = time[-2, 2].to_i
	result = hours * MINUTES_PER_HOUR + minutes
	
	if result >= MINUTES_PER_DAY
		result % MINUTES_PER_DAY
	else 
		result
	end 
end 

def before_midnight(time)
	hours = time[0,2].to_i
	minutes = time[-2, 2].to_i
	result = hours * MINUTES_PER_HOUR - minutes
	
	if result >= MINUTES_PER_DAY
		result % MINUTES_PER_DAY
	else 
		result
	end 
end 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight('47:59')