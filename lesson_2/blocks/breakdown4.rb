# Break down the code into understandable chunks.

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

# select is invoked on the outer array containing nested hashes. It returns a new array that evaluate to true based on the 
		# conditions in the block. This return value is not used.
# all is invoked on each nested hash which returns either true or false booleans based on whether the keys and values evaluate to
		# true or false. With the first hash, it returns false. because not all the values in the first hash evaluate to true.
		# With the second hash, it returns true because every key/value pair evaluate to true based on the expression.
# The false and true return values of the block are used as the respective return values for the outer block as well,
		# determining that the first hash (evaluating to false) will not be returned by #select, only that the second hash will be.
