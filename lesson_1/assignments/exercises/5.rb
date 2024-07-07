# Find the index of the first name that starts with 'Be'.

# Algorithm

	# 1. Create a flintstones collection
	# 2. Iterate through each value of the collection
	# 3. check the starting two characters of every element. Working with strings.
	# 4. Get the index of the first character that starts with 'Be' # => if string[0] == 'B' && string[1] =='e'
			# - maybe use the Array #index method.
	# 5. Return the index

# What are we doing to the collection?
	# Are we transforming? - No.
	# Are we selecting? - Yes and no. We are selecting one value and finding its index.
	
	# each
	# select
	# map
	# each_with_index
	# each_with_object
	# any?

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles Ben)

the_index = 0

flintstones.each_with_index do |person, i|
	if person.slice(0, 2) == 'Be'
		the_index = i 
		break
	end 
end 

p the_index # => 3 


index = flintstones.index { |name| name[0, 2] == 'Be' }

p index # =>