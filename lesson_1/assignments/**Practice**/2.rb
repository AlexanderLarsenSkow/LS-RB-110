test = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4 # # count evaluates how many collection elements are truthy based on the expression in the block.
end

p test # => 2

