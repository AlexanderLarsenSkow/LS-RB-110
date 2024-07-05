my_numbers = [1, 4, 3, 7, 2, 6]

def mutate_this_bitch(arr)
  index = 0
  loop do
    arr[index] = arr[index] * 2
    index += 1
    break if index == arr.size
  end
  arr
end 

mutated_array = mutate_this_bitch(my_numbers)

p mutated_array.object_id
p my_numbers.object_id
p my_numbers # => [2, 8, 6, 14, 4, 12]