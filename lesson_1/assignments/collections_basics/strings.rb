# Can use str[3, 2] to reference the index and number of characters you want. It's slice in Ruby!

str = 'abcdefghi'

str[2] # => "c"

puts str[3, 2][0]

str2 = 'The grass is green'

puts str2[4, 5] # => grass

puts str[0].object_id == str[0].object_id # => false. Strings are not true collections and only contain one object, the whole string.