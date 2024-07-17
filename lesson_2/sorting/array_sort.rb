# Figure out the return value without running it.

p [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort

# => [['a', 'car', 'd'], ['a', 'car', 'd', 3], ['a', 'cat', 'b', 'c'], ['b', 2]]

p ['b', 2] <=> [1, 2, 3]

p ['b', 2] <=> ['a', 'b']