# Spin Me Around in Circles

# This method returns a completely new string. The original string is left unchanged. It is not mutated here.
# This is because String #split is invoked on the string object in the method definition, which returns a new array
# with the string split by the method's argument. Here, split is invoked and returns an array value with the 
# characters reversed. Array #join is then invoked on the returned array, giving a final return value for the method.

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

str = 'hello world'

p spin_me(str) # "olleh dlrow"

p str # => 'hello world'

def spin_me2(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id # 47264354160220
puts spin_me2(arr).object_id # 47264354160220
p arr 