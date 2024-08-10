# Twenty One! 

CARDS = ["2", "3", "4", "5", "6", 
				"7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
				
SUITS = ["Hearts", "Diamonds", "Spades", "Clubs"]

TOP_VALUE = 21
STAY_VALUE = 17

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

def initial_deal!(deck)
	cards = {}
	2.times do |_|
		card = deck.keys.sample
		cards[card] = deck[card]
	end 
	
	deck.delete_if { |card, value| cards.include?(card)}
	cards
end 

def determine_ace_value!(cards)
	card_values = cards.values.sum
	
	cards.each_key do |card|
		if card.split.include?("Ace") && card_values > TOP_VALUE
			cards[card] = 1
		end
		break if cards.values.sum <= TOP_VALUE
	end
	cards
end 

def add_values!(cards)
	determine_ace_value!(cards)
	cards.values.sum
end 


def display_player_deal(player_cards)
	system "clear"
	player_cards.each do |card|
		puts "You have the #{card}."
	end 
end 

def display_dealer_card(dealer_cards)
	puts "The dealer has the #{dealer_cards[0]} and an unknown card."
end 

def dealt_twenty_one(player_value, dealer_value)
	if player_value == TOP_VALUE && player_value != dealer_value
		"Player"
	
	elsif dealer_value == TOP_VALUE && dealer_value != player_value
		"Dealer"
	
	elsif player_value == TOP_VALUE && player_value == dealer_value
		"Tie"
	
	else 
		nil
	end 
end 

def determine_winner_for_blackjack(player_value, dealer_value)
	blackjack = dealt_twenty_one(player_value, dealer_value) 
	case blackjack
	when "Player" then puts "Blackjack! You win this round."
	when "Dealer" then puts "The dealer got Blackjack! You lost this time."
	when "Tie" then puts "Double Blackjack! What are the odds? Tie game!"
	end 
end 

def hit!(deck, cards)
	card = deck.keys.sample
	cards[card] = deck[card]
	deck.delete(card)
	cards
end 

def player_turn!(deck, cards)
	new_values = []
	loop do 
		puts "Do you want to hit or stay?"
		answer = gets.chomp.capitalize
		
		if answer == 'Hit'
			hit!(deck, cards)
			display_player_deal(cards.keys)
			new_values = add_values!(cards)

		elsif answer == 'Stay'
			puts "Good luck player one."
			break
			
		else 
			puts "Uh, hit or stay, pal?"
		end 
		 
	end 
	new_values
end 

def display_dealer_choice(choice, dealer_cards)
	if choice == 'hit'
		puts "The dealer has decided to hit! /
		They have gotten the #{dealer_cards.last}."
		
	else 
		puts "The dealer has decided to stay."
	end 
end 

def dealer_turn!(deck, dealer_cards, dealer_value)
	dealer_choice = ''
	if dealer_value['dealer'] < STAY_VALUE
		dealer_choice = 'hit'
		hit!(deck, dealer_cards)
		add_one_to_value!(dealer_cards, dealer_value, 'dealer')
	
	else
		dealer_choice = 'stay'
		
	end
	dealer_choice
end 
	
loop do 
	deck = initialize_deck

	player_cards = initial_deal!(deck)
	display_player_deal(player_cards.keys)
	p player_value = add_values!(player_cards)
	
	dealer_cards = initial_deal!(deck)
	display_dealer_card(dealer_cards.keys)
	p dealer_value = add_values!(dealer_cards)
	
	if dealt_twenty_one(player_value, dealer_value)
		determine_winner_for_blackjack(player_value, dealer_value) 
		break
	end 
	
	player_value = player_turn!(deck, player_cards)
	p player_value
	
	#dealer_choice = dealer_turn!(deck, dealer_cards, dealer_value)
	#display_dealer_choice(dealer_choice, dealer_cards)
	
	#p player_value
	#p dealer_value
	break 
end 


