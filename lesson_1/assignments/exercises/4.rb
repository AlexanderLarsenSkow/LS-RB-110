# Pick out the minimum age out of all the values here.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_array = ages.map { |_, age| age }

p ages_array.sort.first # => 10 

# How could we use Array #each or each_with_object?

ages_array2 = ages.each_with_object([]) do |pair, array| 
	array << pair[1]
end 

p ages_array2.sort.first # => 10

# The idea is to get the values in the hash into an array collection, then sum the elements.

# This returns an array of the values. Simpler than what we did but the same really.
p ages.values.min # => 10