  # Input: string
# Output: array of pairs from the array (like combination(2))

# Rules:
  # Take every possible pair from the string and return an array of arrays where every subarray is a pair
  # should start with 0, 1, 0 ,2, 0 3

# Examples:
# pairs("An apple a day keeps the doctor away"))
  # 
# pairs("Every engineer enjoys innovative algorithms")

# Data Structures:
  # iterate over an array of the words 
  # create a pair for every word
  # iterate over the successive elements from the current index upto the size of the array -1
  # add the next element to pair then move on and add the pair array to a pairs array
  # return the pairs array

# Algorithm ^

def pairs(string)
  words = string.split
  pairs = []
  words.each_with_index do |word, index|

    (index + 1...words.size).each do |index2|
      pair = [word, words[index2]]
      pairs << pair
    end
  end
  pairs
end


# p pairs('An apple a day')
# p pairs("An apple a day keeps the doctor away")
# 
p pairs("Every engineer enjoys innovative algorithms")