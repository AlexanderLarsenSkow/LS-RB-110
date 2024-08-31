# This method accomplishes Problem 7's Solution in much fewer steps.
# The main idea is that the number of pairs is always half of the number of pairs in the main array.
# So we can iterate through a unique array and take each count from that, add it to our saved variable, and return it.
# So much simpler than creating an identical pairs nested array lmao

def pairs(int_array)
  number_of_pairs = 0
  int_array.uniq.each do |num|
    number_of_pairs += (int_array.count(num) / 2)
  end
  number_of_pairs
end

p pairs([1, 1, 2, 2]) == 2
p pairs([3, 1, 4, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]) == 3
p pairs([2, 7, 1, 8, 2, 8, 1, 8, 2, 8, 4]) == 4
p pairs([]) == 0
p pairs([23]) == 0
p pairs([997, 997]) == 1
p pairs([32, 32, 32]) == 1
p pairs([7, 7, 7, 7, 7, 7, 7]) == 3