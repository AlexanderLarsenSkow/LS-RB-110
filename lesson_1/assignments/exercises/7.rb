# Create a hash that counts how many times each letter appears in the string below.

# Expected output: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"

hash = {}

statement.each_char do |char| 
	count = statement.count(char)
 	hash[char] = count
end 

p hash

p 'a'.count('a')