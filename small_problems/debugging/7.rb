# Neutralizer
  # This method should remove all the negative words. Why doesn't it remove them all?

def neutralize(sentence)
  words = sentence.split

  words.reject! do |word|
    negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.