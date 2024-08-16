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
    dealt_card = deck.keys.sample
    cards[dealt_card] = deck[dealt_card]
    deck.delete_if { |card, _| cards.include?(card) }
  end

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

def join_and(cards)
  display = cards.keys.map do |card|
    if card == cards.keys.last
      "and the #{card}"
    
    elsif cards.keys.size > 2
      "the #{card}, "
      
    else 
      "#{card} "
    end
  end 
  display.join
end 

def display_player_deal(player_cards, value)
  system "clear"
  puts "You have the #{join_and(player_cards)}!"
  puts "You're at #{value}!" 
end

def display_dealer_card(dealer_cards)
  puts "The dealer has the #{dealer_cards.keys[1]} and an unknown card."
end

def dealt_twenty_one?(player_cards, dealer_cards)
  player_value = player_cards.values.sum
  dealer_value = dealer_cards.values.sum
  
  player_value == TOP_VALUE || dealer_value == TOP_VALUE
end

def reveal_dealer_card(dealer_cards, value, blackjack = true)
  puts "The dealer reveals the #{dealer_cards.keys[0]}!"
  
  if blackjack == false
    puts "They have the #{join_and(dealer_cards)} at #{value}!"
    sleep 2
  end
end 

def determine_blackjack_winner(player_value, dealer_value)
  if player_value == TOP_VALUE && player_value == dealer_value
    "Tie"
    
  elsif player_value == TOP_VALUE
    "Player"

  elsif dealer_value == TOP_VALUE
    "Dealer"
  end
end

def display_blackjack_winner(winner)
  sleep 4
  system "clear"
  case winner
  when "Player" 
    puts "Blackjack! You win this round."
  
  when "Dealer" 
    puts "The dealer got Blackjack! You lost this time."
    
  when "Tie" 
    puts "Double Blackjack! What are the odds? Tie game!"
    
  end
  sleep 2.5
  system "clear"
end

def blackjack(player_cards, dealer_cards)
  player_value = player_cards.values.sum
  dealer_value = dealer_cards.values.sum
  
  winner = determine_blackjack_winner(player_value, dealer_value)
  reveal_dealer_card(dealer_cards, dealer_value)
  display_blackjack_winner(winner)
end 

def hit!(deck, cards)
  card = deck.keys.sample
  cards[card] = deck[card]
  deck.delete(card)
  cards
end

def player_hit!(deck, cards)
  hit!(deck, cards)
  value = add_values!(cards)
  display_player_deal(cards, value)
  value
end

def busted?(value)
  value > TOP_VALUE
end

def hit_twenty_one?(value)
  value == TOP_VALUE
end 

def display_hit_results(value)
  if hit_twenty_one?(value)
    puts "Well played. Let's see if the dealer can hit 21 too."
    sleep 2

  elsif busted?(value)
    puts "Oops! You busted!"
  end
end

def player_turn!(deck, cards)
  value = add_values!(cards)
  loop do
    break if (busted?(value) || hit_twenty_one?(value))

    puts "Do you want to hit or stay?"
    answer = gets.chomp.capitalize

    if answer.start_with? "H"
      value = player_hit!(deck, cards)
      display_hit_results(value)

    elsif answer.start_with?('S')
      break

    else
      puts "Uh, hit or stay pal?"
    end
  end
  value
end

def display_new_dealer_card(cards)
  sleep 1.2
  system "clear"
  puts "The dealer hit the #{cards.keys.last}!"
end

def display_dealer_hit(value)
  sleep 1.2
  puts "The dealer has decided to hit with #{value}!"
end

def display_dealer_stay(value)
  sleep 1.2
  system "clear"
  puts "The dealer has decided to stay at #{value}!"
end

def display_dealer_bust(value)
  sleep 1.2
  puts "Boo hoo! The dealer busted at #{value}."
end

def dealer_hit!(deck, cards)
  hit!(deck, cards)
  display_new_dealer_card(cards)
  add_values!(cards)
end 

def stay?(value)
  value > STAY_VALUE
end 

def dealer_turn!(deck, cards)
  value = add_values!(cards)
  reveal_dealer_card(cards, value, false)
  
  loop do
    if busted?(value)
      display_dealer_bust(value)
      break

    elsif stay?(value)
      display_dealer_stay(value)
      break

    elsif !stay?(value)
      display_dealer_hit(value)
    end

    value = dealer_hit!(deck, cards)
  end
  value
end

def determine_hand_winner(player_value, dealer_value)
  if dealer_value > TOP_VALUE || player_value > dealer_value
    "Player"
    
  elsif player_value > TOP_VALUE || dealer_value > player_value
    "Dealer"
    
  elsif dealer_value == player_value
    nil
  end 
end 

def display_hand_winner(winner, player_value, dealer_value)
  if winner == 'Player'
    puts "Congratulations! You won this hand at #{player_value}."

  elsif winner == "Dealer"
    puts "The Dealer wins at #{dealer_value}! Good hand."

  elsif !winner
    puts "You both tie at #{player_value}!"
  end
end

def starting_deal(deck)
    cards = initial_deal!(deck)
    value = add_values!(cards)
  if deck.size == 50
    display_player_deal(cards, value)
  
  else
    display_dealer_card(cards)
  end
  
  cards
end 

def final_outcome(deck, player_cards, dealer_cards)
  loop do
    player_value = player_turn!(deck, player_cards)
    
    break if busted?(player_value)
    system "clear"
    
    dealer_value = dealer_turn!(deck, dealer_cards)
    
    winner = determine_hand_winner(player_value, dealer_value)
    display_hand_winner(winner, player_value, dealer_value)
    break
  end 
end 

def play_again?
  answer = ''
  loop do 
    puts "Play again? Y / N"
    answer = gets.chomp.capitalize
    system "clear"
    
    if answer.start_with?('N') || answer.start_with?('Y')
      break
    end 
    puts "Enter yes or no."
  end   
  answer.start_with?('Y')
end 

loop do

  system "clear"
  deck = initialize_deck

  player_cards = starting_deal(deck)
  dealer_cards = starting_deal(deck)
    
  if dealt_twenty_one?(player_cards, dealer_cards)
    blackjack(player_cards, dealer_cards)
    next if play_again?
  end
    
  final_outcome(deck, player_cards, dealer_cards)

  break if !play_again?
end

puts "Thanks for playing!"
