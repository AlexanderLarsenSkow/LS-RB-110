require 'yaml'
DISPLAYS = YAML.load_file('ttt.yml')

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

def display_teaching_board
  puts "      |           |       "
  puts "  1   |     2     |   3   "
  puts "      |           |       "
  puts "------+-----------+------ "
  puts "      |           |       "
  puts "  4   |     5     |   6   "
  puts "      |           |       "
  puts "------+-----------+------ "
  puts "      |           |       "
  puts "  7   |     8     |   9   "
  puts "      |           |       "
end

def intro
  prompt(DISPLAYS['welcome'])
  prompt(DISPLAYS['rules'])
  loop do
    prompt(DISPLAYS["ready"])
    answer = gets.chomp.capitalize

    break if answer.start_with?('Y')
    prompt(DISPLAYS["ready_error"])
  end
end

def display_score_under_board
  puts " "
  puts(format(DISPLAYS['scores_under_board'], SCORE[:player], SCORE[:computer]))
  puts " "
end

# rubocop: disable Metrics/AbcSize

def display_board(board)
  system "clear"
  puts DISPLAYS['x_o']
  puts " "
  puts "      |           |       "
  puts "  #{board[1]}   |     #{board[2]}     |   #{board[3]}      "
  puts "      |           |       "
  puts "------+-----------+------ "
  puts "      |           |       "
  puts "  #{board[4]}   |     #{board[5]}     |   #{board[6]}      "
  puts "      |           |       "
  puts "------+-----------+------ "
  puts "      |           |       "
  puts "  #{board[7]}   |     #{board[8]}     |   #{board[9]}      "
  puts "      |           |       "
  display_score_under_board
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def who_first_player
  loop do
    prompt(DISPLAYS["first_question"])
    answer = gets.chomp.capitalize

    if answer.start_with?("Y")
      return 'Player'

    elsif answer.start_with?("N")
      return 'Computer'

    else
      prompt(DISPLAYS["first_question_error"])
    end
  end
end

def who_first_computer
  ['Player', 'Computer'].sample
end

def display_computer_decision(play_decision, comp_decision)
  if comp_decision == 'Player' && play_decision == comp_decision
    prompt(DISPLAYS["agree_player_first"])

  elsif comp_decision == 'Player' && play_decision != comp_decision
    prompt(DISPLAYS["disagree_player_first"])

  elsif comp_decision == 'Computer' && play_decision == comp_decision
    prompt(DISPLAYS["agree_comp_first"])

  else
    prompt(DISPLAYS["disagree_comp_first"])

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
    prompt(DISPLAYS["player_won_toss"])

  elsif final_decision == 'Computer' && play_decision != comp_decision
    prompt(DISPLAYS['comp_won_toss'])
  end
end

def game_start
  loop do
    prompt(DISPLAYS['game_start'])
    answer = gets.chomp.capitalize

    if answer.start_with?('Y') || answer == 'Start'
      break
    end

    prompt(DISPLAY['game_start_error'])
  end
end

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
    prompt(format(DISPLAYS['player_square'], joinor(empty_squares(board))))
    square = gets.chomp.to_i

    break if empty_squares(board).include? square
    prompt(DISPLAYS['player_square_error'])
  end
  board[square] = X_MARKER
end

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

def display_score
  system "clear"
  prompt(format(DISPLAYS['scores_between_rounds'], SCORE[:player],
                SCORE[:computer]))
  puts " "
end

# Main Game

display_teaching_board
intro

loop do
  board = initialize_board
  display_score

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
    prompt("#{detect_winner(board)} #{DISPLAYS['x_won']}")
  else
    prompt(DISPLAYS['tie'])
  end

  prompt(DISPLAYS['play_again'])
  answer = gets.chomp

  break unless answer.upcase.start_with?('Y')
end

prompt(DISPLAYS['thanks'])
