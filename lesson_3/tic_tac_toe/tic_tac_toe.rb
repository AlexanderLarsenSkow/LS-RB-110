INITIAL_MARKER = ' '
X_MARKER = 'X'
O_MARKER = 'O'

def prompt(message)
	puts "<< #{message}"
end 

# Step 1: Display the Board

def display_board(brd)
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

board = initialize_board
display_board(board)

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

loop do 
	player_choice!(board)
	computer_choice!(board)
	display_board(board)
	break if empty_squares(board).empty?
end