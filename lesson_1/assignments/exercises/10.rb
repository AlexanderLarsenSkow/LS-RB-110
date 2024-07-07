# Create a new key for the munsters hash 'age_range'
	# 'age_range' can point to 'kid', 'adult', or 'senior' depending on the family member's age in the hash.
	# age_range Rules:
		# 'kid' 0 - 17
		# 'adult' 18 - 64
		# 'senior' 65 +
	# Iterate through and add the values based on the value of the age keys.
		# Gonna have to do nested iteration.
 
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" }, # adult
  "Lily" => { "age" => 30, "gender" => "female" }, # adult
  "Grandpa" => { "age" => 402, "gender" => "male" }, # senior
  "Eddie" => { "age" => 10, "gender" => "male" }, # kid
  "Marilyn" => { "age" => 23, "gender" => "female"} # adult
}

munsters_array = munsters.to_a

munsters_array.each do |element|
	if element[1]['age'] > 0 && element[1]['age'] < 18
		element[1]['age_group'] = 'kid'
	
	elsif element[1]['age'] > 17 && element[1]['age'] < 65
		element[1]['age_group'] = 'adult'
	
	else 
		element[1]['age_group'] = 'senior'
	end 
end 

munsters_age_groups = munsters_array.to_h

p munsters_age_groups

