INITIAL_MARKER = ' '
X_MARKER = 'X'
O_MARKER = 'O'

def prompt(message)
	puts "<< #{message}"
end 

# Step 1: Display the Board

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
end 

def initialize_board
	new_board = {}
	(1..9).each {|num| new_board[num] = INITIAL_MARKER}
	new_board
end 

# Step 2: Getting User Choice

def empty_squares(board)
	board.keys.select do |num|
		board[num] == INITIAL_MARKER
	end 
end 

def player_choice!(board)
	square = ''
	loop do 
		prompt "Choose a square (#{empty_squares(board).join(',')})"
		square = gets.chomp.to_i
		
		break if empty_squares(board).include? square
		prompt "Not a valid choice."
	
	end
	board[square] = X_MARKER
end 

# STEP 3: Getting the Computer's Choice 

def computer_choice!(board)
	computer_square = empty_squares(board).sample
	board[computer_square] = O_MARKER
end 

def full_board?(board)
	empty_squares(board).empty?
end

def someone_won?(board)
	!!detect_winner(board)
end 

def detect_winner(board)
	winning_lines = [
		[1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
		[1, 4, 7], [2, 5, 8], [3, 6, 9], # columns
		[1, 5, 9], [3, 5, 7] # diagnals
	]
	
	winning_lines.each do |line|
		
		if board[line[0]] == X_MARKER && 
			board[line[1]] == X_MARKER &&
			board[line[2]] == X_MARKER
				return 'Player'
		
		elsif board[line[0]] == O_MARKER && 
			board[line[1]] == O_MARKER &&
			board[line[2]] == O_MARKER
				return 'Computer'
		end 
	end
	nil
end 

# Main Game

loop do 
	board = initialize_board

	loop do
		display_board(board)
		player_choice!(board)
		break if someone_won?(board) || full_board?(board)
		computer_choice!(board)
		break if someone_won?(board) || full_board?(board)
	end
	system "clear"
	display_board(board)

	if someone_won?(board) 
		prompt("#{detect_winner(board)} won!")
	else 
		prompt("It's a tie!")
	end
	
	prompt("Play again? Y / N")
	answer = gets.chomp
	
	break unless answer.upcase.start_with?('Y')
end 

prompt("Thanks for playing!")