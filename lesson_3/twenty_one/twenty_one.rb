# Twenty One! 

CARDS = ["2", "3", "4", "5", "6", 
				"7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
				
SUITS = ["Hearts", "Diamonds", "Spades", "Clubs"]

TOP_VALUE = 21

def initialize_deck
	deck = {}
	card_value = 2 
	
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

# Consider making this a generic method and determining if it's computer or player.

def initial_deal!(deck)
	cards = []
	card_one = deck.sample
	card_two = deck.sample
	deck.delete(card_one)
	deck.delete(card_two)
	
	cards.push(card_one, card_two)
end 


def display_player_deal(player_cards)
	system "clear"
	player_cards.each do |card|
		puts "You have the #{card}."
	end 
end 

def display_dealer_card(dealer_cards)
	puts "The dealer has the #{dealer_cards.sample} and an unknown card."
end 

def hit!(deck, cards)
	card = deck.sample
	deck.delete(card)
	cards << card
end 

def player_turn(deck, player_cards)
	loop do 
		puts "Do you want to hit or stay?"
		answer = gets.chomp.capitalize
		
		if answer == 'Hit'
			hit!(deck, player_cards)
			display_player_deal(player_cards)
		
		elsif answer == 'Stay'
			puts "Good luck player one."
			break
			
		else 
			puts "Uh, hit or stay, pal?"
		end 
		 
	end 	
end 
	
deck_with_card_values = initialize_deck

loop do 
	deck = initialize_deck.keys
	player_cards = initial_deal!(deck)
	display_player_deal(player_cards)

	dealer_cards = initial_deal!(deck)
	display_dealer_card(dealer_cards)

	player_turn(deck, player_cards)
	#dealer_turn(deck, dealer_cards, dealer_values)
	break 
end 


