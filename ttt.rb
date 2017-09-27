#TicTacToe Functions

def tttup(player1, choice)

	board = ["1", "x", "3", "4", "5", "6", "7", "8", "9"] 

end

def tttup2(player2, choice)
	board = ["1","2","3","4","5","6","7","8","9"]  
    board[choice - 1] = player2

    board
end  

def tttup3(board,player1,choice)  
    board[choice - 1] = player1

    board
end

def playerxo(player)
	
    if player == "x"
    	"o"
    else
    	"x"
    end
    
end





