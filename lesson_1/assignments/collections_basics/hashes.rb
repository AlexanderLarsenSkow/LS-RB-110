# Hashes as Collections.

hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

hsh['fruit']    # => "apple"
hsh['fruit'][0] # => "a"

# Cannot duplicate keys. Can duplicate values.

country_capitals = { uk: 'London', france: 'Paris', germany: 'Berlin' }
p country_capitals.keys # => [:uk, :france, :germany]
p country_capitals.values # => ['London', 'Paris', 'Berlin']
p country_capitals.values[0] # => 'London'