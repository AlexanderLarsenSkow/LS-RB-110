def multisum(number)
	array = []

	number.times do |num|
		if num % 3 == 0
			array << num
		elsif 
			num % 5 == 0
			array << num
		end 
	end
	
	if number % 5 == 0 || number % 3 == 0
		array << number
	end 
	
	
	array.sum
end

p multisum(10)
p multisum(300)

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168