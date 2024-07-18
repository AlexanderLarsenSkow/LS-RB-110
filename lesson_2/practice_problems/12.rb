# Return a hash where the first item in the array is the key and the second is the value. 
# Don't use to_h

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = {}

arr.each do |array|
	key = array[0]
	value = array[1]
	hash[key] = value
end 

p hash 

p hash == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}