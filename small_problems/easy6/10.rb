# Mutation

# Determine what the following code will print without running it.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo) # array of strings
array2 = [] # empty array
array1.each { |value| array2 << value } # adding values from array 1 to 2 
array1.each { |val| val.upcase! if val.start_with?('C', 'S') } # upcasing C and S names. Does it mutate? Yes it does.
p array2 # => Moe Larry Curly Shemp Harpo Chico Groucho Zeppo

p array1 # => Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo

# They're pointing at the same objects! That's why they mutate. OMG.