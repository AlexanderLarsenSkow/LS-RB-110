test = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

p test # => [nil, 'bear']

# This is Enumerable #map. map is a non-selective method, meaning it works on every single element. 'ant' evaluates to false 
# when passed into the expression in the block, but that returns nil in the new array for that element. Just be careful.
# Remember what map does.

