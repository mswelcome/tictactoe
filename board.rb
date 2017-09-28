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

end