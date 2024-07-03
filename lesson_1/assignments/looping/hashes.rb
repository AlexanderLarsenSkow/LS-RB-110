number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

pets = number_of_pets.keys 
p pets # => ['dogs', 'cats', 'fish']

count = 0 

loop do
	break if count >= pets.size
	current_pet = pets[count]
	current_pet_number = number_of_pets[current_pet]
	puts "I have #{current_pet_number} #{current_pet}"
	count += 1
end 