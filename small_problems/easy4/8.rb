

# making the hash coded hash
def string_integer_hash 
	string_numbers = '0123456789'.split('')
	hash = {}
	integer = 0
	
	string_numbers.each do |number|
		hash[number] = integer
		integer += 1
	end 
	hash
end 

# converting to integers
def string_to_integer(str_num)
	result = []
	hash = string_integer_hash
	
	str_num.each_char do |char|
		hash.each do |string, integer|
			result << integer if string == char
		end 
	end 	
	result.inject {|a, i| a * 10 + i} 
end 


def string_to_signed_integer(string)
	if string[0] != '-'
		string_to_integer(string)
	else
		-string_to_integer(string)
	end 
end 

p string_to_signed_integer('-4321')
p string_to_signed_integer('-570')

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
p string_to_signed_integer('-8900')
p string_to_signed_integer('+9000')
