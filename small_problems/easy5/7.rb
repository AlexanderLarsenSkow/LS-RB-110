# Modify this solution so that the string size excludes non alphabetic characters
# Algorithm:
	# 1. Define a new method that returns a length value that only checks for alphabetic characters.
	# 2. Define acceptable characters a-z A-Z
	# 3. If the character is one of these characters, add one to the count.
	# 4. If the character is not one of these characters, add nothing to count.
	# 5. Return the count.

def alphabetic_size(word_string)
	alphabetic_chars = ('a'..'z').to_a
	alphabetic_chars << ('A'..'Z').to_a 
	alphabetic_chars.flatten!
	
	array = []
	word_string.split.each do |string|
		string.each_char do |char|
			 array << char if alphabetic_chars.include?(char)
		end 
	end
	array.join.size
end 

def word_sizes(word_string)
	word_string.split.each_with_object(Hash.new(0)) do |string, hash| 
		hash[alphabetic_size(string)] += 1
	end 
end 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}