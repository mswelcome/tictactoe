#TicTacToe Functions

# Player 1 Moves
def tttup1(board, player1, choice)

	board[choice - 1] = player1 
	board

end

# Player 2 Moves
def tttup2(board, player2, choice)
	 
    board[choice - 1] = player2
    board
end  

# Players being X or O
def playerxo(player)
	
    if player == "x"
    	"o"
    else
    	"x"
    end
    
end

def fullboard(board)
	arya = []
	count = 0
	
	board.each do |x|
	arya << board.include?(count + 1)
	end
	arya.include?(true)	
end

def open_spot?(board, choice)
	x = choice.to_i
	if board[x - 1] == choice
		true
	else
		false
	end

end





