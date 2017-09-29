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
	aryax = []


	if board[0] == "x" && board[1] == "x" && board[2] == "x"
		true
	elsif board[3] == "x" && board[4] == "x" && board[5] == "x"
	 	true
	elsif board[6] == "x" && board[7] == "x" && board[8] == "x"
	 	true
	elsif board[0] == "x" && board[3] == "x" && board[6] == "x"
	 	true
	elsif board[1] == "x" && board[4] == "x" && board[7] == "x"
	 	true
	elsif board[2] == "x" && board[5] == "x" && board[8] == "x"
	 	true
	elsif board[0] == "x" && board[4] == "x" && board[8] == "x"
	 	true
	elsif board[2] == "x" && board[4] == "x" && board[6] == "x"
	 	true
	elsif board[0] == "o" && board[1] == "o"  && board[2] == "o"
	 	true
	elsif board[3] == "o" && board[4] == "o" && board[5] == "o"
		true
	elsif board[6] == "o" && board[7] == "o" && board[8] == "o"
		true
	elsif board[0] == "o" && board[3] == "o" && board[6] == "o"
		true
	elsif board[1] == "o" && board[4] == "o" && board[7] == "o"
		true
	elsif board[2] == "o" && board[5] == "o" && board[8] == "o"
		true
	elsif board[0] == "o" && board[4] == "o" && board[8] == "o"
		true
	elsif board[2] == "o" && board[4] == "o" && board[6] == "o"
		true
	else
		false
	end
end


end
