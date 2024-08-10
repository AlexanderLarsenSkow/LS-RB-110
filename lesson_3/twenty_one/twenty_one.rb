# Twenty One! 

CARDS = ["1", "2", "3", "4", "5", "6", 
				"7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
				
SUITS = ["Hearts", "Diamonds", "Spades", "Clubs"]

TOP_VALUE = 21

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

deck = initialize_deck.keys


# Consider making this a generic method and determining if it's computer or player.

def initial_deal_to_player(deck)
	player_cards = []
	card_one = deck.sample
	card_two = deck.sample
	player_cards.push(card_one, card_two)
end 

#player_initial_deal = initial_deal_to_player(deck)

def display_player_deal(player_initial_deal)
	player_initial_deal.each do |card|
		puts "You have the #{card}."
	end 
end 

#display_player_deal(player_initial_deal)

def deal_one(deck)
	card = deck.sample
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

#initial_deal_to_player(deck)

