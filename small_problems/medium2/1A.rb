# Additional Problem Solving for Longest Sentence Problem

# I'm still stuck on how to create an array of sentences.
# Essentially, this should return a nested array of sentences. Sentences are determined by . ! ?
# A first step might be splitting into an array by spaces, but this doesn't solve the issue with the other endings.
# Maybe...
  # So, every . ? ! ends the word, right?
  # So maybe we can do something if word includes a delimiter. Like,

    # Mini Algorithm:
      # Split the string by empty spaces
      # Create an empty array for transitioning
      # Create a sentences array
      # Put each word into the transition array.
      # When the word includes a delimiter, add that element as well.
      # Then, join transition together and add that to the sentences array
      # Empty all the elements from transition.
      # Return the sentences array with each sentence split into a subarrays of words

    # We want to split into a further nested array of words. So check your

    # Now. Figure out the longest sentence.
    # LONGEST_SENTENCE METHOD Algorithm
      # Take the nested sentence array as an input
      # create a var max equal to 0
      # Take the size of the strings
      # Return the max of this array

  # I also need to return the string itself.
  # Create an empty longest_sentence string
  # So, take the max and iterate through the sentences array.
  # If the size of the array is equal to maximum, join that sentence together and return it with the maximum.

SENTENCE_ENDINGS = ['.', '!', '?']

def split_into_sentences(string)
  transition = []
  sentences = []

  string.split.each do |word|
    transition << word
    if SENTENCE_ENDINGS.include?(word[-1])
      sentences << transition.join(' ')
      transition = []
    end
  end
  sentences.map { |sentence| sentence.split}
end

def longest_sentence_count(string)
  sentences = split_into_sentences(string)
  longest_sentence = ''
  maximum = sentences.map { |sentence| sentence.size}.max

  sentences.each do |sentence|
    longest_sentence = sentence.join(' ') if sentence.size == maximum
  end

  puts "The longest sentence is '#{longest_sentence}' It is #{maximum} words long."
end

string = "I love this place. Isn't it nice? It is so pretty!"
p split_into_sentences(string) == [["I", "love", "this", "place."], ["Isn't", "it", "nice?"], ["It", "is", "so", "pretty!"]]
p longest_sentence_count(string)

string2 = <<HEREDOC
Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.
HEREDOC

p longest_sentence_count(string2)