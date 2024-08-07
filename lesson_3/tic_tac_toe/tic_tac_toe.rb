INITIAL_MARKER = ' '
X_MARKER = 'X'
O_MARKER = 'O'

WINNING_LINES = [
  [1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
  [1, 4, 7], [2, 5, 8], [3, 6, 9], # columns
  [1, 5, 9], [3, 5, 7] # diagnals
]

SCORE = {
  player: 0,
  computer: 0
}

def prompt(message)
  puts "<< #{message}"
end

# Step 1: Display the Board

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  puts "You: X		Computer: O"
  system "clear"
  puts "      |           |       "
  puts "  #{brd[1]}   |     #{brd[2]}     |   #{brd[3]}      "
  puts "      |           |       "
  puts "------+-----------+------ "
  puts "      |           |       "
  puts "  #{brd[4]}   |     #{brd[5]}     |   #{brd[6]}      "
  puts "      |           |       "
  puts "------+-----------+------ "
  puts "      |           |       "
  puts "  #{brd[7]}   |     #{brd[8]}     |   #{brd[9]}      "
  puts "      |           |       "
  puts ""
  puts "Player: #{SCORE[:player]}      Computer: #{SCORE[:computer]}"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

# Asking the User and Computer who will go first

def who_first_player
  system "clear"
  loop do 
    prompt("Do you want to go first?")
    answer = gets.chomp.capitalize
    
    if answer.start_with?("Y")
      return 'Player'
    
    elsif answer.start_with?("N") 
      return 'Computer'
    
    else 
      prompt("Please enter yes or no")
    end 
  end 
end 

def who_first_computer
  ['Player', 'Computer'].sample
end 

def display_computer_decision(play_decision, comp_decision)
  if comp_decision == 'Player' && play_decision == comp_decision
    prompt("For some reason, the computer agrees with you! You will go first!")
  
  elsif comp_decision == 'Player' && play_decision != comp_decision
    prompt("The computer wants you to go first! Something's screwy here.")
    
  elsif comp_decision == 'Computer' && play_decision == comp_decision
    prompt("The computer agrees with you! They will go first.")
  
  else 
    prompt("The computer wants to go first. Surprising? I think not!")

  end 
end 

def who_first(player_decision, computer_decision)
  
  if player_decision == computer_decision
    player_decision
    
  else
    ['Player', 'Computer'].sample 
  end 
end 

def display_who_first(final_decision, play_decision, comp_decision)
  if final_decision == 'Player' && play_decision != comp_decision
    prompt("You won the toss. You will go first!")
  
  elsif final_decision == 'Computer' && play_decision != comp_decision
    prompt("The computer won the toss. They will go first!")
  end 
end

def game_start 
  loop do 
    prompt("Start Game?")
    answer = gets.chomp.capitalize
    
    if answer.start_with?('Y') || answer == 'Start'
      break 
    end 
    
    prompt("Enter yes or start to begin the game.")
    
  end 
end 

# Step 2: Getting User Choice

def empty_squares(board)
  board.keys.select do |num|
    board[num] == INITIAL_MARKER
  end
end

def joinor(choices_array, punctuation = ', ', joiner = 'or') 
  choices = choices_array.map do |number|
   
    if choices_array.last == number
       "#{joiner} #{number}"
   
    elsif choices_array.size > 2 
      "#{number}#{punctuation}"
   
    else
      "#{number} "
    end 
  end
  choices.join
end 

def player_choice!(board)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(board))}"
    square = gets.chomp.to_i

    break if empty_squares(board).include? square
    prompt "Not a valid choice."
  end
  board[square] = X_MARKER
end

# STEP 3: Getting the Computer's Choice
require 'pry-byebug'

def computer_ai(board, line_array)
    winning_squares = line_array.partition do |num|
        board[num] == INITIAL_MARKER
      end
  winning_squares[0][0]
end

def computer_choice!(board)
  choices = empty_squares(board)
  computer_square = choices.sample
  computer_square = 5 if choices.include?(5)

  WINNING_LINES.each do |line|
    #binding.pry
    smart_option = computer_ai(board, line)
    board_values = board.values_at(*line)
    
    if board_values.count(X_MARKER) == 2 && choices.include?(smart_option)  
      computer_square = smart_option 
    
    elsif board_values.count(O_MARKER) == 2 && choices.include?(smart_option)
      computer_square = smart_option 
      break
    end 
  end 
    
  board[computer_square] = O_MARKER
end 

def alternate_player(board, who_first)
  if who_first == 'Player' 
    first = 'Player'
    second = 'Computer'
  else 
    first = 'Computer'
    second = 'Player'
  end 
  
  if board.values.count(INITIAL_MARKER).odd?
    first
  else 
    second
  end 
end 

def place_piece!(board, current_player)
  if current_player == 'Player'
    player_choice!(board)
  
  else 
    computer_choice!(board)
  end 
end 

def full_board?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    board_values = board.values_at(*line)
    if board_values.count(X_MARKER) == 3
      return 'Player'

    elsif board_values.count(O_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def add_score!(board)
  if detect_winner(board) == 'Player'
    SCORE[:player] += 1
  else
    SCORE[:computer] += 1
  end 
end 

# Main Game

loop do
  board = initialize_board

  player_decision = who_first_player
  computer_decision = who_first_computer
  display_computer_decision(player_decision, computer_decision)
  
  decision = who_first(player_decision, computer_decision)
  display_who_first(decision, player_decision, computer_decision)
  
  game_start
  
  loop do
    display_board(board)
    current_player = alternate_player(board, decision)
    place_piece!(board, current_player)
    break if someone_won?(board) || full_board?(board)
  end
  system "clear"
  display_board(board)

  if someone_won?(board)
    add_score!(board)
    prompt("#{detect_winner(board)} won!")
  else
    prompt("It's a tie!")
  end
  
  
  prompt("Play again? Y / N")
  answer = gets.chomp

  break unless answer.upcase.start_with?('Y')
end

prompt("Thanks for playing!")