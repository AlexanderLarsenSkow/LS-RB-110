# Given this code, what are the final values of variables a and b? Don't run it.

a = 2 # 2
b = [5, 8] # arr
arr = [a, b] # [2, [5, 8]]

arr[0] += 2 # [4, [5, 8]]
arr[1][0] -= a # [4, [1, 8]]

p arr # => [4, [3, 8]]

p a # 2
p b # [3, 8]

# Reassigning the pointer in the index position at arr[0] to reference a different integer. 
# This does not change what a points at. a still points at 2. Immutable objects are like this.