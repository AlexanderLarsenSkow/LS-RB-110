# Problem 9 with # each_char or # chars

# Algorithm: 
	# chars 
	
def crunch(string) 
	arr = string.chars 
	result = ''
	arr.each do |char|
		result += char unless result[-1] == char
	end 
	result
end 
	
	
p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''

def crunch2(string)
	result = ''
	
	string.each_char do |char|
		result << char unless result[-1] == char
	end 
	result
end 

p crunch2('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch2('4444abcabccba') == '4abcabcba'
p crunch2('ggggggggggggggg') == 'g'
p crunch2('a') == 'a'
p crunch2('') == ''