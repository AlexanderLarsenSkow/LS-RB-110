# Add up all the ages from the Munster family hash.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_array = ages.map do |key, value| 
	value
end 
 
p ages_array.sum == 6174

total_age = 0

ages.each { |key, age| total_age += age } 

p total_age == ages_array.sum
