# Return the day of the week on top of the time.

SECONDS_PER_MINUTE = 60

def week_day(time)
  case 
  	when time.monday? then 'Monday'
  	when time.tuesday? then 'Tuesday'
  	when time.wednesday? then 'Wednesday'
  	when time.thursday? then 'Thursday'
  	when time.friday? then 'Friday'
  	when time.saturday? then 'Saturday'
		when time.sunday? then 'Sunday'
  end	
end 

def time_of_day(number)
  time = Time.new(2024)
  minutes_to_be_added = SECONDS_PER_MINUTE * number
  time += minutes_to_be_added
  
  day = week_day(time)
  hour = time.hour
  minute = time.min
  
  format('%s: %02d:%02d', day, hour, minute)
end 

p time_of_day(0)
p time_of_day(4000)
p time_of_day(5000)
p time_of_day(7512)