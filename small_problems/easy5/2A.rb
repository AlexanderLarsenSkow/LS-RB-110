# Tools: divmod, modulo

# Use data / time classes to solve the problem in Exercise 2.

SECONDS_PER_MINUTE = 60

def time_of_day(number)
  time = Time.new(2024)
  minutes_to_be_added = SECONDS_PER_MINUTE * number
  time += minutes_to_be_added
  
  hour = time.hour
  minute = time.min
  
  format('%02d:%02d', hour, minute)
  
end 

p time_of_day(50)
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"