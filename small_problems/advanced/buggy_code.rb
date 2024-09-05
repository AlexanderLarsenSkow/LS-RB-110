# def my_method(array)
#   if array.empty?
#     []
#   elsif
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([]) == []
# p my_method([3]) == [21]
# p my_method([3, 4]) == [9, 16]
# p my_method([5, 6, 7]) [25, 36, 49]

# Why doesn't this code print out what we expect it to print out?

# Rather than printing the expected values, the elsif statement defined from lines 4 to 7 never actually runs
  # because a condition for the elsif statement is never defined. Essentially, it only ever runs the if statement at teh beginning,
  # which only happens if hte array is empty, and the else statement at the end, which runs if the array is not empty.
  # Instead, the statements should reorganized: the map invocation should run only if the size of the array is greater than 1.
  # teh last statement should run if it is equal to 1.

  # This code gives us the expected results:

  def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
