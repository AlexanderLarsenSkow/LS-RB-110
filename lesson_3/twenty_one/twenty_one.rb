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

# Consider making this a generic method and determining if it's computer or player.

def initial_deal_to_player(deck) 
	card_one = deck.keys.sample
	card_two = deck.keys.sample
	puts "You have: #{card_one} and #{card_two}"
end 

def deal_one

end 

def player_turn
	loop do 
		puts "Do you want to hit or stay?"
		answer = gets.chomp.capitalize
		
		if answer == 'Hit'
			deal_one
			break
		
		elsif answer == 'Stay'
			nil
			break
			
		else 
			puts "Uh, hit or stay, pal?"
		end 
		 
	end 	
end 

initial_deal_to_player(deck)

