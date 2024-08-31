# We input an array of strings with random strings
# We want to return every anagram in its own subarray in a return array.

#

def is_anagram?(string1, string2)
  string1.chars.sort == string2.chars.sort
end

def group_anagrams(words_array)
  anagrams = []
  words_array.each do |word|
    group = [word]

    words_array.each do |word2|
      if is_anagram?(word, word2) && word != word2
        group << word2
      end
    end
    anagrams << group unless anagrams.any? { |array| array.include? group[0] }
  end
  anagrams
end

array = ["demo", "none", "mode", "neon", "dome"]
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p group_anagrams(array)
p group_anagrams(words)