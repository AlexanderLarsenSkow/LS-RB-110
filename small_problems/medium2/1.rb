# PEDAC

# Problem:
	# Expected Input: book
	# Expected Output: longest sentence in the book

	# Rules:
		# Explicit:
		  # Write a program that takes a book or large number of paragraphs as input
		  # Your program should return the word count for the longest sentence

		# Implicit:
		  # Things we need to do:
		    # Find out the longest sentence
		    # Count how many words. # -> so splitting the sentence by words.
		  # Splitting the thing is done by . ! or ?
		  # What if the splitting is regular, and is done by word instead?
		  # We could create subarrays

# Examples:
  # Too long for this LOL
  # string = "I love this place. It is so pretty and nice. Woohoo."
  # longest_sentence(string) == "It is so pretty and nice"

# Data Structure:
  # Definitely an array
  # Can use split to split based on . ! ?
  # Use an array for these as well

# Algorithm:
  # Create a variable count
  # Create a constant array to hold the sentence endings.
  # Iterate through this array
  # Split input string by each value in the array
  # count the number of characters in each element.
  # Now we need to check them against each other?

# Big Steps for this Method:
  # Split the string based on all endings (. ! ?) to create arrays of sentences.
    # What I could do is tell the program to create a new element whenever it finds a '.', '!', or '?'
    # So, that is, it adds pieces into an array as elements and stops when it sees one of these characters.

      # Algorithm for Splitting
        # Create a transition array
        # Create an empty sentences array
        # Creat an index variable at 0
        # Iterate through the characters in the string.
        # Add every character to the transition array. stop when teh character is one of the endings.
        # When the character is an ending, now we stop for a moment.
        # Add the first element to the sentences array. Append each successive element to this element.
        # Make the transition array empty again.
        # Next time, add at the second index in the new array.

  # Count the number of words in each sentence. --> maybe create a nested array of words and get the size
  # Now we have to check each sentence against each other and return the largest sentence.
    # Consider putting all the word counts into an array and returning the max (brilliant!)

# Code:

SENTENCE_ENDINGS = ['?', '!', '.']

def split_by_sentence(string)
  sentences = ['']
  transition = []
  index = 0

  string.each_char do |char|
    transition << char

    if SENTENCE_ENDINGS.include?(char)
      transition.each do |tr_char|
        sentences << tr_char
      end
      transition = []
      index += 1

    end
  end
  sentences
end


string = "I love this place. Is it? It is so pretty and nice. Woohoo. Do you like it?"
p split_by_sentence(string)
#p longest_sentence(string) #== "It is so pretty and nice"