# Change the array below so that every element is shortened to just the first 3 characters. Don't create a new array.
	# Possible solutions:
		# - map!
		# each_with_object creates a new array/hash object, so that's out.
		# each just returns self.
		# we're not selecting anything, so not select.
		

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |person|
	person[0, 3]
end 

p flintstones # => ['Fr,' 'Bar', 'Wil', 'Bet', 'Bam', 'Peb']