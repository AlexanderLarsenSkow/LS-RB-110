test = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p test # => {'a' => 'ant', 'b' => 'bear', 'c' => 'cat}'