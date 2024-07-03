# Arrays as Collections. Can use array[2, 3] for Array #slice.

arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']

arr[2] # => "c"

arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
puts arr[2, 3] # => c d e 
puts arr[2, 3][0] # => c

arr2 = [1, 'two', :three, '4']
arr2.slice(3, 1) # => ["4"]
arr2.slice(3..3) # => ["4"]
arr2.slice(3)    # => "4"