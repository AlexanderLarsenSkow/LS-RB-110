# Solve Problem 9 with a While Loop

# Algorithm
# set variable index equal to 0
# 

def crunch(string)
	index = 0
	result = ''
	
	while index <= string.length
		result << string[index] unless string[index] == string[index + 1]
		index += 1
	end 
	result
end 


p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''