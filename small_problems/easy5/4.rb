def swap(string)
	array = string.split(' ')
	array.map do |string|
		first = string[0]
		last = string[-1]
		string[0] = last
		string[-1] = first
	end 
	array.join(' ')
end 

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'