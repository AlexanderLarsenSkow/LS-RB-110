# Twenty One! 

CARDS = ["One", "Two", "Three", "Four", "Five", "Six", 
				"Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King", "Ace"]
				
SUITS = ["Hearts", "Diamonds", "Spades", "Clubs"]

def initialize_deck
	deck = {}
	card_value = 1 
	
	CARDS.each do |card|
		if card_value > 10 && card != "Ace"
			card_value = 10
		
		elsif card == "Ace"
			card_value = 11
		end 
		
		SUITS.each do |suit|
			deck["#{card} of #{suit}"] = card_value
		end 
		card_value += 1
	end 
	deck
end 

deck = initialize_deck

p deck 

