# Write some code to return an array of subarrays containing the colors of the fruits inside subarrays 
	# and strings of the sizes of the vegetables.
# Rules: 
	# The colors should be capitalized.
	# The size strings should be all uppercase.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result = []

hsh.each do |_, hash|
	
	if hash[:type] == 'fruit'
		colors_arr = hash[:colors].map do |color|
			color.capitalize
		end 
		result << colors_arr
		
	elsif hash[:type] == 'vegetable'
		result << hash[:size].upcase
	end 
end 


p result 

p result == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]