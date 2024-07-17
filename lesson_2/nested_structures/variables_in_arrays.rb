a = [1, 3]
b = [2]

array = [a, b] # => [[1, 3], [2]]

a[0] = 8

p a # => [8, 3]
p array # => [[8, 3], [2]]

array[1][0] = 10

p array # => [[8, 3], [10]]
p b # => [10]

# The index positions and variables reference the same objects here, so changing either one is mutating the object.
# They continue to reference the same object after mutation.