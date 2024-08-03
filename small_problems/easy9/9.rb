# Group Anagrams

# PEDAC

# Problem:
	# Expected Input: array of words
	# Expected Output: smaller array
	
	# Rules:
		# Explicit:
			# Write a method that takes an array of words and checks to see if they're anagrmas.
			# Return all the words that are anagrams in an array
			# Anagrams are words that have all the same letters in a different order.
		
		# Implicit:
			# 
	
# Examples:
	# demo ==> dome are anagrams

# Data Structure: Array

# Algorithm:
	# Check to see if the words are anagrams.
	# ANAGRAM METHOD:
		# split the string into an array of characters
		# sort each array from smallest to shortest
		# If the arrays are equal, they are anagrams.
	# MAIN METHOD:
		# Separate the elements in the main array based off of whether or not they are anagrams or not.
		# Create an empty array
		# Create an element index equal to 1 
		# Iterate over the main array
		# Place these objects in the anagram checker method.
		# If they are anagrams, place them in a new array.

	# Problems:
		# Problem One:
			# How do I compare strings in the same array against each other?
		# Problem Two: 
			# How do I separate the elements into several different arrays? Partition?
	
# Code:
require 'pry-byebug'

def is_anagram?(string1, string2)
	array1 = string1.chars.sort
	array2 = string2.chars.sort
	
	array1 == array2
end 

p is_anagram?('mode', 'demo') == true
p is_anagram?('happy', 'yo') == false
p is_anagram?('oy', 'yo') == true

def anagram_finder(words)
	anagrams = []
	second_index = 1
	
	words.each_with_index do |word, index|
		words.each do |second_word|
			
			if is_anagram?(words[index], words[second_index])
				anagrams.push(words[index], words[second_index])
				p anagrams.uniq
				
				second_index += 1 until second_index == words.size - 1
			end 
		end 
	end 
	
end 

array = %w(demo mode veil evil wolf flow)

p anagram_finder(array)
# p anagram_finder(['demo', 'mode', 'evil', 'veil'])
=begin
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
p anagram_finder(words) #== ["demo", "dome", "mode"]
#["neon", "none"]
#(etc) 
=end 