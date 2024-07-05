test = [1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

p test # => [1, nil, nil]
# 1 evaluates to true and 2 and 3 evaluate to nil because of the puts invocation on line 3.