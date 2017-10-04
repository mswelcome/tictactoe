#Board

class Board

	attr_accessor :ttt_board

	def initialize

		@ttt_board = [1,2,3,4,5,6,7,8,9]

	end

	def tttup(marker, choice)

		@ttt_board[choice - 1] = marker
		@ttt_board

	end

	def fullboard?(board)
		if board.include?(1) || board.include?(2) || board.include?(3) || board.include?(4) || board.include?(5) || board.include?(6) || board.include?(7) || board.include?(8) || board.include?(9)
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

	def wins(ttt_board)


		if ttt_board[0] == "x" && ttt_board[1] == "x" && ttt_board[2] == "x"
			true
		elsif ttt_board[3] == "x" && ttt_board[4] == "x" && ttt_board[5] == "x"
		 	true
		elsif ttt_board[6] == "x" && ttt_board[7] == "x" && ttt_board[8] == "x"
		 	true
		elsif ttt_board[0] == "x" && ttt_board[3] == "x" && ttt_board[6] == "x"
		 	true
		elsif ttt_board[1] == "x" && ttt_board[4] == "x" && ttt_board[7] == "x"
		 	true
		elsif ttt_board[2] == "x" && ttt_board[5] == "x" && ttt_board[8] == "x"
		 	true
		elsif ttt_board[0] == "x" && ttt_board[4] == "x" && ttt_board[8] == "x"
		 	true
		elsif ttt_board[2] == "x" && ttt_board[4] == "x" && ttt_board[6] == "x"
		 	true
		elsif ttt_board[0] == "o" && ttt_board[1] == "o"  && ttt_board[2] == "o"
		 	true
		elsif ttt_board[3] == "o" && ttt_board[4] == "o" && ttt_board[5] == "o"
			true
		elsif ttt_board[6] == "o" && ttt_board[7] == "o" && ttt_board[8] == "o"
			true
		elsif ttt_board[0] == "o" && ttt_board[3] == "o" && ttt_board[6] == "o"
			true
		elsif ttt_board[1] == "o" && ttt_board[4] == "o" && ttt_board[7] == "o"
			true
		elsif ttt_board[2] == "o" && ttt_board[5] == "o" && ttt_board[8] == "o"
			true
		elsif ttt_board[0] == "o" && ttt_board[4] == "o" && ttt_board[8] == "o"
			true
		elsif ttt_board[2] == "o" && ttt_board[4] == "o" && ttt_board[6] == "o"
			true
		else
			false
		end
	end



end
