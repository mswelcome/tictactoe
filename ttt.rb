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

def fullboard?(board)
	if board.include?("1") || board.include?("2") || board.include?("3") || board.include?("4") || board.include?("5") || board.include?("6") || board.include?("7") || board.include?("8") || board.include?("9") 
        false
    else
        true
    end	
end

def open_spot?(board, choice)
	x = choice.to_i
	if board[x - 1] == choice
		true
	else
		false
	end

end

def wins(board, player1, player2)
	winnums = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

	
	if board[0] && board[1] && board[2] == "x"
		true
	elsif board[3] && board[4] && board[5] == "x"
		true
	elsif board[6] && board[7] && board[8] == "x"
		true
	elsif board[0] && board[3] && board[6] == "x"
		true
	elsif board[1] && board[4] && board[7] == "x"
		true
	elsif board[2] && board[5] && board[8] == "x"
		true
	elsif board[0] && board[4] && board[8] == "x"
		true
	elsif board[2] && board[4] && board[6] == "x"
		true
	elsif board[0] && board[1] && board[2] == "o"
		true
	elsif board[3] && board[4] && board[5] == "o"
		true
	elsif board[6] && board[7] && board[8] == "o"
		true
	elsif board[0] && board[3] && board[6] == "o"
		true
	elsif board[1] && board[4] && board[7] == "o"
		true
	elsif board[2] && board[5] && board[8] == "o"
		true
	elsif board[0] && board[4] && board[8] == "o"
		true
	elsif board[2] && board[4] && board[6] == "o"
		true			
	else
		false
	end
end

# if board[grrr[0]] == "x" && board[grrr[1]] == "x" board[grrr[2]] == "x"
# 			true
# 		end

