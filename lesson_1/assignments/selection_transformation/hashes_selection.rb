# Understand the Problem

# We need to iterate through the hash object with the loop keyword.
# We need to check keys/values. What methods do we know that will do that for us?
# Hash #keys will put all keys into an array. Excellent! 

# Algorithm:
# Create an empty array
# Create an index variable to iterate through the index of the array.
# Convert the hash to an array.
# Check to see if the sub_arrays contain the string "Fruit"
# If they contain "Fruit", add them to the empty array.
# Convert the final array to a hash.
# Return that hash.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def select_fruit(hash)
  fruit_array = []
  index = 0
  array = hash.to_a
  
 loop do
   if array[index].include?('Fruit')
     fruit_array << array[index]
   end 
   
   index += 1
   break if index == array.size
   
  end
  fruit_array.to_h
end 

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

def test(hash)
  key_array = hash.keys
  fruit_arr = []
  index = 0
  
  loop do 
    if hash[key_array[index]] == "Fruit"
      fruit_arr << [key_array[index], hash[key_array[index]]]
    end 
    
    index += 1
    break if index == key_array.size
  end 
  fruit_arr.to_h
end 

p test(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

def refined_thinking(produce_list)
  produce_keys = produce_list.keys # array conversion
  index = 0
  fruit_hash = {}
  
  loop do 
    break if index == produce_keys.length
    
    current_key = produce_keys[index]
    current_value = produce_list[current_key]
    
    if current_value == 'Fruit'
      fruit_hash[current_key] = current_value
    end 
    
    index += 1
  end 
  fruit_hash
end

p refined_thinking(produce)

array = [[:one, 1], [:two, 2]]

p array.to_h
