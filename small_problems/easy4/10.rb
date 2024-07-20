# Convert a signed Integer to a String

# Algorithm: 
	# If the number is - prepend - to the string
	# If the number is + prepend + to the string
	
	# Mini-Algorithm: negative_integer_to_string
	# If the number is negative, do something silly.
	# make it positive.
	# Prepend a negative sign. LOL I got it.
	# 

INTEGER_TO_STRING_HASH = {
	0 => '0', 
	1 => '1',
	2 => '2',
	3 => '3',
	4 => '4',
	5 => '5',
	6 => '6',
	7 => '7',
	8 => '8',
	9 => '9'
	}

def integer_to_string(integer)
	result = []
	int_array = integer.digits.reverse
	
	int_array.each do |int|
		INTEGER_TO_STRING_HASH.each do |key_int, string_num|
			result << string_num if int == key_int	
		end 
	end
	result.join 
end 	

# Adding + or - to the strings 
def signed_integer_to_string(integer)
	case 
	when integer > 0 then sign = '+'
	when integer == 0 then sign = ''
	else 
	  sign = '-'
	  integer = -integer
	end 
	"#{sign}#{integer_to_string(integer)}"
end 	


p signed_integer_to_string(-123) 
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'