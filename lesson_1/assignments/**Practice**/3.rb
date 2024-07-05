test = [1, 2, 3].reject do |num|
  puts num # nil 
end

p test # => [1, 2, 3]

# Array #reject returns every element that evaluates to false/nil. Because puts always returns nil, it returns every element as
# rejects lol.