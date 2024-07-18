# Use map to return a new hash identical to this one but with each value incremented by 1.
# don't change it at all.
# remember, map always returns an array so you have to convert back.
# Problem: you lose the keys because map only takes the return value of the block.


arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hash|
	hash.transform_values { |value| value += 1} #whooooooooooo
end 

p new_arr # 2 3 4 5 6 7

p new_arr == [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]
p arr # 1 2 3 4 5 6