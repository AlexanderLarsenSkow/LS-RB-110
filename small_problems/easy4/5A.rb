def multiple?(number, divisor)
	number % divisor == 0
end 

def multisum(number)
	sum = 0
	1.upto(number) do |num|
		if multiple?(num, 3) || multiple?(num, 5)
			sum += num
		end 
	end
	sum 
end 

p multisum(10)
p multisum(1000) == 234168

# use Enumerable # inject or # reduce to solve the problem: 

def multisum2(max_number)
	sum = 0
	(1..max_number).inject do |num|
		 if num % 3 == 0 || num % 5 == 0
		 	sum += num
		 end 
	end
	sum 
end 
	
	
p multisum2(10)
p multisum2(20)
p multisum2(5)
	
p multisum2(10) == 33
p multisum2(20) == 98
p multisum2(3) == 3
p multisum2(5) == 8
