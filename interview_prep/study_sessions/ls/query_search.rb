# Write a function robustSsearch that takes two arguments: an array of words and a query term.
# The function should return an array of words from the given array that match the query term.
# The function should be case insensitive, it should consider partial matches, and
# to account for keyboard typo should consider the that last two letters of the query term may have been reversed.

# Input: array and query search string
# Output: array of integers that match the query search

# Rules:
  # Given a query string and array of words, return an array of potential words that match the query string
  # case doesn't matter
  # the method should consider partial matches
  # it should account for keyboard typo, so the last 2 letters may be reversed.


# Test Cases
# puts robust_search(["develop", "develpo", "deep", "dive", "devel"], "devel").inspect # => ["develop", "develpo", "devel"] # develop,
  # devel, develpo # adds on the last 2 characters and also reverses them

# puts robust_search(["apple", "banana", "cherry"], "naan").inspect # => ["banana"] # only returns 'banana', difference between
  # this example and previous test case

# puts robust_search(["testing", "switch", "characters"], "testnig").inspect # => [] # 'testnig' outputs an empty array


# Data Structures:
  # Arrays for sure
  # Select every string in the array of words that matches the query string
  # in example 1, 'develop', 'develpo', and 'devel' all match the input string to a certain level of accuracy
  # In example 2, only 'banana' matches 'naan' with decent accuracy. So we select strings based on partial matching
  # so if a substring matches, then we can select taht string and put it in our result array.
  # might need to build substrings for both.

  # I'm a little confused on this part. So I take the substrings of both but how do I check that


# Algorithm:
  # MAIN METHOD
    # select every string that has a substring that equals the query string

    # call select on the array
    # if any substrings of one of the array words or the query term match each other, we select that word and return it in the array

      # BUILD SUBSTRINGS METHOD
        # create an empty array
        # iterate from 0 to the size of the array - 2, this is the index
        # iterate from 1 to the size of the array - index, this is the length
        # add this slice of the string to the array of substrings
        # return the array

def reverse_final_chars(query)
  string = query.dup
  container = []
  container << string[-2]
  container << string[-1]

  string[-1] = container[0]
  string[-2] = container[1]
  string
end

def robust_search(array, query)
  array.select do |word|
    word.include?(query) || word.include?(reverse_final_chars(query))
  end
end

puts robust_search(["develop", "develpo", "deep", "dive", "devel"], "devel").inspect # => ["develop", "develpo", "devel"] # develop,
  #devel, develpo # adds on the last 2 characters and also reverses them

puts robust_search(["apple", "banana", "cherry"], "naan").inspect # => ["banana"] # only returns 'banana', difference between
  #this example and previous test case
  # With substrings of 3 or greater, now this test case is failing.
  # I don't think I quite understood this problem.

puts robust_search(["testing", "switch", "characters"], "testnig").inspect # => [] # 'testnig' outputs an empty array
# What is different in this last test case...?

# Question for next time: what is the criteria for a partial match?
#
