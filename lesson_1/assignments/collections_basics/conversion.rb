str = 'abc'

separated = str.chars # => non-mutating 

p separated # => ['a', 'b', 'c']

together_again = separated.join # => non-mutating

p together_again # => 'abc'

hsh = { sky: "blue", grass: "green" }
hsh.to_a # => [[:sky, "blue"], [:grass, "green"]]

arr = [[:name, 'Joe'], [:age, 10]]

p arr.to_h 

arr2 = [1, 2, 3, 4]

p arr2.to_h { |item, value| [item, value] }