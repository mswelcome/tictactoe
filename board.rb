#Board

class Board

	attr_accessor :ttt_board, :marker

	def initialize
		@marker = marker
		@ttt_board = ["","","","","","","","",""]
	end

	def tttup(ttt_board, choice, marker)
		choice = choice.to_i
	 	@ttt_board[choice - 1] = marker
		@ttt_board

	end

	def fullboard?(ttt_board)
		if ttt_board.include?("")
			false
    		else
        		true
    		end
	end

  	def open_spot?(ttt_board, choice)
		qwerty = choice.to_i
		if ttt_board[qwerty - 1] == "x"
			false
		elsif ttt_board[qwerty - 1] == "o"
			false
		else
			true
		end
	end

	def winner(ttt_board)
		winnums = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

		winnums.any? do |arya|
			return true if arya.all? {|a| ttt_board[a] == "x"}
			return true if arya.all? {|a| ttt_board[a] == "o"}
		end

	end




end
