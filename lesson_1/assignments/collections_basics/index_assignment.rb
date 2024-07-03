string = 'joe loves coffee'

string[0] = 'J'

puts string # => Joe loves coffee

# Playing with Array and String Methods
# Now, capitalize the first letter of every word.

split_up = string.split(' ') # => ['Joe', 'loves', 'coffee']

split_up.map! {|i| i.capitalize } # => ['Joe', 'Loves', 'Coffee']

p split_up.join(' ') # => 'Joe Loves Coffee'

# String Index Assignment
str = 'i am a butterfly'
str[0] = 'I'
str[2] = 'A'
str[5] = 'A'
str[7] = 'B'

puts str

# Array Index Assignment
arr = [1, 2, 3, 4, 5]
arr[0] += 1 # => 2
p arr         # => [2, 2, 3, 4, 5]

arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1

p arr # => [2, 3, 4, 5, 6]

# Hash Element Assignment
hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
p hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }

hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegetable'

p hsh