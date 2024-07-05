# What is the Return value of #select here?

test = [1, 2, 3].select do |num|
  num > 5
  'hi' # This is a truthy value and is the final value in the code block argument, so it is the return value. 
end

p test  # => [1, 2, 3]