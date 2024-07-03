alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end


array = [1, 2, 3]
count = 0

loop do
	break if count >= array.size
	puts "I'm the number #{array[count]}!"
	count += 1
#	break if count >= array.size
end