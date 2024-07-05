test = [1, 2, 3].any? do |num|
  puts num
  num.odd?
end

p test # => 1 true 
# any? stops iterating after 1 element evaluates to true.

# The return value of the block is a boolean value based on whether the element evaluates to true based on the Integer #odd? method.
# The return value of the #any method is a boolean as well, whether or not any of the elements evaluates to true based on the
# final condition in the block.