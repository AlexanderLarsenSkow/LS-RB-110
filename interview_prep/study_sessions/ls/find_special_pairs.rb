# Implement a function that finds all pairs of numbers from an array, where:

# The first number in each pair is located at an even index in the original array and has a value less than 5.
# The second number in each pair is located at an odd index in the original array and has a value greater than 5. -- Abbie

# Input: array of integers
# Output: array of pairs arrays

# Rules:
  # Find all pairs in an original array where the first number in the pair is located at an even index and has a value less than 5
  # the second number is located at an odd index in the original array and has a value greater than 5
  # return an array of arrays

# Test cases
# puts find_special_pairs([2, 6, 1, 7, 4, 10]).inspect # [ [ 2, 6 ], [ 2, 7 ], [ 2, 10 ], [ 1, 7 ], [ 1, 10 ], [ 4, 10 ] ] random combinations of 2
# puts find_special_pairs([4, 9, 2, 6, 3, 11, 4]).inspect # [ [ 4, 9 ], [ 4, 6 ], [ 4, 11 ], [ 2, 6 ], [ 2, 11 ], [ 3, 11 ] ]
# puts find_special_pairs([5, 12, 3, 8]).inspect # [ [ 3, 8 ] ]
# puts find_special_pairs([7, 4, 6, 5]).inspect # []
# puts find_special_pairs([1, 7, 2, 8, 3, 9]).inspect # [ [ 1, 7 ], [ 1, 8 ], [ 1, 9 ], [ 2, 8 ], [ 2, 9 ], [ 3, 9 ] ]

# Data Structures:
  # build all combinations of 2 for the array and return an array here.
  # select here:
    # select all pairs in the array of arrays where the first value is less than 5 and its index is even (original array)
    # also where the second number has an odd index and is greater than 5

# Algorithm:    
  # COMBINATIONS
  # build out all combinations of 2 size and return an array of pairs arrays

  # MAIN METHOD:
    # Select all pairs based on two conditions eval to true:

  # FIRST_VAL? (takes original array and array[0] int)
    # number is less than 5 and index is even?

  # SECOND_VAL? same
    # number is greater than 5 and index is odd?

def build_combinations(array)
  combos = []
  array.combination(2) do |combo|
    combos << combo
  end
  combos
end

# p build_combinations([1, 2, 3, 4])

def first_val?(pair, array)
  num = pair[0]
  num < 5 and array.index(num).even?
end

def second_val?(pair, array)
  num = pair[-1]
  num > 5 && array.index(num).odd?
end

def find_special_pairs(array)
  build_combinations(array).select.with_index do |pair|
    first_val?(pair, array) && second_val?(pair, array)
  end
end

# Test cases
puts find_special_pairs([2, 6, 1, 7, 4, 10]).inspect # [ [ 2, 6 ], [ 2, 7 ], [ 2, 10 ], [ 1, 7 ], [ 1, 10 ], [ 4, 10 ] ]
puts find_special_pairs([4, 9, 2, 6, 3, 11, 4]).inspect # [ [ 4, 9 ], [ 4, 6 ], [ 4, 11 ], [ 2, 6 ], [ 2, 11 ], [ 3, 11 ] ]
puts find_special_pairs([5, 12, 3, 8]).inspect # [ [ 3, 8 ] ]
puts find_special_pairs([7, 4, 6, 5]).inspect # []
puts find_special_pairs([1, 7, 2, 8, 3, 9]).inspect # [ [ 1, 7 ], [ 1, 8 ], [ 1, 9 ], [ 2, 8 ], [ 2, 9 ], [ 3, 9 ] ]

# NOTE: solution does NOT solve if integers are ever repeated in the array.