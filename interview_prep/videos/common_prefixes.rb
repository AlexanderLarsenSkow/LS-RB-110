# Write a method that takes the longest common prefix in an array of strings and returns that value.
# If there is no common prefix, return an empty string ''


# Input: array of strings
# Output: substring prefix or empty string, based on shared prefixes.

# [flower, flow, flight] => 'fl' 'fl' is the common prefix and is returned
# ['racecar', 'dog', 'hot'] => '' no common prefix

# Examples
  # p common_prefix(['flower', 'flow', 'flight']) == 'fl'
  # p common_prefix(['dog', 'racecar', 'car']) == ''
  # p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
  # p common_prefix(['throne', 'dungeon']) == ''
  # p common_prefix(['throne', 'throne']) == 'throne'

# Data Structures
  # Arrays
  # Definitely build an array of substrings for each string
  # If every string contains the substring, we return that substring joined together.
  # all? word.include?(substring)
  # But we need to return the longest one... so we can't return the first one.
  # make an array of the included substrings. Return the max for the final value

  # We can't build out the inlcuded substrings array with all substrings.

  # It can only include the prefixes. So, my solution where we build out an array of all the substrings might be a mistake.
  # We need to programatically take the prefixes only and stop adding them if they don't have the same anymore.
  # we could break if they don't all include it. There we go.
  # So I know how to build an array of substrings but I'm unsure how to build an array of prefixes.
  #

# Algorithm
  # Create an empty included substrings array
  # for each string, build a nested substrings array:

  # SUBSTRINGS METHOD
      # input: string
      # create a substrings array
      # iterate over each character from 0 index to the size of the array - 1
      # iterate over each character again, this time from 1 to the size of the array...?
      # add the slice of the string to the substrings array

  # I think we want to transform the array actually. Then we check if every subarray includes the same substrings.
  # Every subarray that includes the same substring, we add to the included_substrings array.

def build_substrings(word)
  substrings = []

  (0...word.size).each do |index|
    (index...word.size).each do |slice|
      substrings << word[index..slice]
    end
  end
  substrings
end

def common_prefix(words_array)
  common_prefixes = []
  substrings_arrays = words_array.map { |word| build_substrings(word) }

  substrings_arrays.each do |substring_array|
    substring_array.each do |substring|
      if substrings_arrays.all? do |substring_array2|
          substring_array2.include?(substring)
        end

        common_prefixes << substring if substring[0] == words_array[0][0]
      end
    end
  end
  return '' if common_prefixes.empty?
  common_prefixes.max_by { |str| str.size}
end

 p common_prefix(['flower', 'flow', 'fliwht']) == 'fl'
 p common_prefix(['dog', 'racecar', 'car']) == ''
 p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
 p common_prefix(['throne', 'dungeon']) == '' # Cannot return any substring, only prefixes.
 p common_prefix(['throne', 'throne']) == 'throne'
