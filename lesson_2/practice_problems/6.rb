# Print name is a age year old gender through iteration. 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, hash|
	age = 0
	gender = ''
	hash.each do |key, value|
		age = value if value.is_a?(Integer) # getting the ages
		gender = value if value.is_a?(String) # getting the genders
	end 
	puts "#{name} is a #{age} year old #{gender}."
end