# Getting Clear Space for Remove Duplicates

# So, I've made some progress on this problem but I'm still struggling a little bit.
# Firstly, I have gotten the solution correct for standard cases with simple pairings.
# Unfortunately, I haven't gotten the ones correct for 'moving adjacents' -- that is,
  # adjacents that form from removing them from the array. I need to come up with a method for dealing with this.


def remove_duplicates(string)
  chars = string.chars
  index = 0
  iteration_count = 0

  loop do
    if index >= chars.size
      iteration_count += 1
      index = 0
    end
    break if iteration_count == 2

    index2 = index + 1
    char1 = chars[index]
    char2 = chars[index2]

    if char1 == char2
      chars.delete_at(index)
      chars.delete_at(index2 - 1)
    end

    index += 1
  end
  chars.join
end


p remove_duplicates('aab') == 'b'
p remove_duplicates("aaybbyz") == "z" # because it takes out aa, then bb, then yy is together. Take it out lol.
p remove_duplicates("a") == "a"
p remove_duplicates("abbca") == "aca"
p remove_duplicates("aabbcc") == ""
p remove_duplicates("aderg") == "aderg"
p remove_duplicates("azxxzy") == "ay"
p remove_duplicates("abbaca") == "ca"