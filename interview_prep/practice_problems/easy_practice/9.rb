# Write a method that takes 2 strings and return the number of times that the second string appears in the first string.
# overlapping doesn't count: 'babab' contains only one instance of 'bab'

# second argument is never an empty string

# input: 2 strings
# Output: integer value representing the number of times the second string occurs in string 1

# Rules:
  # determine how many times the second string appears in the first string
  # 2nd string is never empty
  # They cannot overlap. "babab" 'bab' => 1 time

# Examples:
  # p count_substrings('babab', 'bab') == 1 # no overlapping
  # p count_substrings('babab', 'ba') == 2
  # p count_substrings('babab', 'b') == 3
  # p count_substrings('babab', 'x') == 0
  # p count_substrings('babab', 'x') == 0
  # p count_substrings('', 'x') == 0
  # p count_substrings('bbbaabbbbaab', 'baab') == 2
  # p count_substrings('bbbaabbbbaab', 'bbaab') == 2
  # p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1

# Data Structures:
  # Arrays
  # My first idea is to take all the substrings from the first string and see how many matches I can make.
  # Building the substrings is problematic because if there is overlapping, there will be 2 strings in teh substrings array
  # And they will count two strings.

  # two potential solutions:
    # ONE figuring out a condition so that the method understands to eliminate one of the substrings in case of overlapping.
    # TWO restarting and trying a different approach altogether.

      # what if we iterated through string1 and split it by chars
      # then we remove it from a deep copy of the string array
      # if the count is 0, we know it overlaps and we - 1 from count at the end.

# Algorithm:
  # Build an array of all shared characters, with the same count => 'bab', 'babab' => 'bab'

  # Build subarrays Method
    # METHOD
      # Create an empty array
      # Iterate from 0 to the array size - 1, with index representing the numberes
      # Iterate from 1 to the array size - index, with length representing the numbers
      # add the slice from index to length to teh empty array
      # return the array

      # modifying METHOD
        # first, we don't want to add another substring to the unless it equals string 2 and it doesn't overlap

        # OVERLAP METHOD
          # we know there is no overlapping if the substrings don't equal more than the length of the string itself.
          # input: string1, substrings, substring
          # if substring and substrings added together are greater than the length of string1, return true.
            # else, return false

          # if transforming the substrings array into a sum of string lengths added to the length of the substring
            # is greater than the sizez of string1, return true
            # else return false

          # Could use multiplication. If there's no overlap
          # 'babbab'
          # If there's no overlap, they won't share any index values. If there is overlap, they will share index values. This is it.

  # MAIN METHOD
    # count how many versions of string 2 are in teh substrings array



def overlap?(substrings, substring, string1, string2)
    included_chars = []
  p string1
    string1.each_char do |char|
      included_chars << char if string2.include?(char)
    end

    p included_chars
  substring_lengths = substrings.map { |substr| substr.length }.sum
  substring_lengths + substring.length > included_chars.length
end

  def build_substrings(string1, string2)
    substrings = []

    (0...string1.size).each do |index|
      (1..string1.size - index).each do |length|
        substring = string1[index, length]
        substrings << substring if substring == string2 && !overlap?(substrings, substring, string1, string2)
      end
    end
    substrings
  end

#p build_substrings('babab', 'bab')

  def count_substrings(string1, string2)
    substrings = build_substrings(string1, string2)

    substrings.count(string2)
  end


p count_substrings('bababxyzasdfasdf', 'bab')
# p count_substrings('babab', 'bab') == 1
# p count_substrings('babab', 'ba') == 2
# p count_substrings('babab', 'b') == 3
# p count_substrings('babab', 'x') == 0
# p count_substrings('babab', 'x') == 0
# p count_substrings('', 'x') == 0
# p count_substrings('bbbaabbbbaab', 'baab') == 2
# p count_substrings('bbbaabbbbaab', 'bbaab') == 2
# p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1