# Use each to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, array|
	vowels = 'aeiou'
	array.each do |string|
		string.each_char do |char|
			puts char if vowels.include?(char)
		end 
	end 
end 
	