# dup and # clone

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
b = arr2[1].upcase!

p b # => 'B'

p arr2 # => ["a", "B", "c"]
p arr1 # => ["a", "B", "c"]