# Take the array object and return a hash where the names are the keys and the index positions are the values.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}
flintstones.each_with_index { |name, i| hash[name] = i}

p hash

# What's another way to make this work? What about each_with_object?

index = 0

hash2 = flintstones.each_with_object({}) do |element, hash| 
	hash[element] = index
	index += 1
end 

p hash2

# Using the each method. It's basically the same as each_with_object except you have to create the empty hash yourself.

index = 0
hash3 = {}

flintstones.each do |name|
	hash3[name] = index
	index += 1
end 
	
p hash3