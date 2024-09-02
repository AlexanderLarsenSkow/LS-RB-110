# Reverse Sentence
# The method below is supposed to reverse a string. Find the error in this code.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = words.size - 1
  while i >= 0
    reversed_words << words[i]
    i -= 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'