# Twenty One!

require 'yaml'
DISPLAYS = YAML.load_file('twenty_one.yml')

CARDS = ["2", "3", "4", "5", "6",
         "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]

SUITS = ["♠", "♣", "♦", "♥"]

TOP_VALUE = 21
STAY_VALUE = 17

def prompt(message)
  puts "<< #{message}"
end

def display_welcome
  prompt DISPLAYS['welcome']
  sleep 2
end

def display_rules
  system "clear"
  puts("     The rules are simple.

   Hit over 21 and you lose.

   Hit 21 exactly and you win,
 unless the dealer hits 21 as well.

  Hit higher than the Dealer,
          You win.

         Hit lower,
         You lose.")
  sleep 8
end

def display_play
  system "clear"
  prompt DISPLAYS['play']
  sleep 2
end

def initialize_score
  score = {}
  score['Player'] = 0
  score['Dealer'] = 0
  score
end

def display_score(score)
  sleep 2.8
  system "clear"
  prompt format(DISPLAYS['points'], score['Player'], score['Dealer'])
end

def add_score!(score, winner)
  score[winner] += 1 unless !winner
end

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
  prompt "#{DISPLAYS['player_cards']} #{join_and(player_cards)}!"
  prompt "#{DISPLAYS['player_value']} #{value}!"
end

def display_dealer_card(dealer_cards)
  card = dealer_cards.keys[1]
  prompt "#{DISPLAYS['dealer_card_a']} #{card} #{DISPLAYS['dealer_card_b']}"
end

def reveal_dealer_card(dealer_cards, value, blackjack: true)
  hidden_card = dealer_cards.keys[0]
  prompt "#{DISPLAYS['dealer_reveal']} #{hidden_card}!"

  if !blackjack
    prompt "#{DISPLAYS['dealer_cards']} #{join_and(dealer_cards)} at #{value}!"
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
    prompt DISPLAYS['player_blackjack']

  when "Dealer"
    prompt DISPLAYS['dealer_blackjack']

  when "Tie"
    prompt DISPLAYS['double_blackjack']

  end
  sleep 2.5
  system "clear"
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
    prompt DISPLAYS['player_hit_21']
    sleep 4

  elsif busted?(value)
    prompt DISPLAYS['player_busted']
  end
end

def player_turn!(deck, cards)
  value = add_values!(cards)
  loop do
    break if busted?(value) || hit_twenty_one?(value)

    prompt DISPLAYS['hit_or_stay']
    answer = gets.chomp.capitalize

    if answer.start_with? "H"
      value = player_hit!(deck, cards)
      display_hit_results(value)

    elsif answer.start_with?('S')
      break

    else
      prompt DISPLAYS['hit_or_stay_error']
    end
  end
  value
end

def display_new_dealer_card(cards)
  sleep 1.2
  system "clear"
  prompt "#{DISPLAYS['dealer_new_card']} #{cards.keys.last}!"
end

def display_dealer_hit(value)
  sleep 1.2
  prompt "#{DISPLAYS['dealer_hit']} #{value}!"
end

def display_dealer_stay(value)
  sleep 1.2
  system "clear"
  prompt "#{DISPLAYS['dealer_stay']} #{value}!"
end

def display_dealer_bust(value)
  sleep 1.2
  prompt "#{DISPLAYS['dealer_bust']} #{value}."
end

def dealer_hit!(deck, cards)
  hit!(deck, cards)
  display_new_dealer_card(cards)
  add_values!(cards)
end

def stay?(value)
  value >= STAY_VALUE
end

def dealer_turn!(deck, cards)
  value = add_values!(cards)
  reveal_dealer_card(cards, value, blackjack: false)

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
  player_bust = busted?(player_value)
  dealer_bust = busted?(dealer_value)

  if player_bust || (dealer_value > player_value && !dealer_bust)
    "Dealer"

  elsif dealer_bust || (player_value > dealer_value && !player_bust)
    "Player"
  end
end

def display_hand_winner(winner, player_value, dealer_value)
  if winner == 'Player'
    prompt "#{DISPLAYS['player_win']} #{player_value}."

  elsif winner == "Dealer"
    part_one = DISPLAYS['dealer_win_a']
    part_two = DISPLAYS['dealer_win_b']

    prompt "#{part_one} #{dealer_value} #{part_two}"

  elsif !winner
    prompt "#{DISPLAYS['tie']} #{player_value}!"
  end
end

def get_play_again_input
  answer = ''
  loop do
    prompt DISPLAYS['play_again']
    answer = gets.chomp.capitalize
    system "clear"

    if answer.start_with?('N') || answer.start_with?('Y')
      break
    end
    prompt DISPLAYS['play_again_error']
  end
  answer
end

def introduce_game
  display_welcome
  display_rules
  display_play
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

def dealt_twenty_one?(player_cards, dealer_cards)
  player_value = player_cards.values.sum
  dealer_value = dealer_cards.values.sum

  player_value == TOP_VALUE || dealer_value == TOP_VALUE
end

def determine_blackjack_outcome(player_cards, dealer_cards, score)
  player_value = player_cards.values.sum
  dealer_value = dealer_cards.values.sum

  winner = determine_blackjack_winner(player_value, dealer_value)
  reveal_dealer_card(dealer_cards, dealer_value)
  display_blackjack_winner(winner)

  add_score!(score, winner)
  display_score(score)
end

def determine_final_outcome(deck, player_cards, dealer_cards, score)
  player_value = player_turn!(deck, player_cards)
  dealer_value = add_values!(dealer_cards)

  if !busted?(player_value)
    system "clear"
    dealer_value = dealer_turn!(deck, dealer_cards)
  end

  winner = determine_hand_winner(player_value, dealer_value)
  display_hand_winner(winner, player_value, dealer_value)

  add_score!(score, winner)
  display_score(score)
end

def play_again?
  answer = get_play_again_input
  answer.start_with?('Y')
end

introduce_game

score = initialize_score

loop do
  deck = initialize_deck

  player_cards = starting_deal(deck)
  dealer_cards = starting_deal(deck)

  if dealt_twenty_one?(player_cards, dealer_cards)
    determine_blackjack_outcome(player_cards, dealer_cards, score)
    next if play_again?
    break if !play_again?
  end

  determine_final_outcome(deck, player_cards, dealer_cards, score)

  break if !play_again?
end

prompt DISPLAYS['thanks']
