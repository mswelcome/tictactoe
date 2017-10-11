#Board

class Board

	attr_accessor :ttt_board, :marker

	def initialize
		@marker = marker
		@ttt_board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	end

	def tttup(ttt_board, choice, marker)
		choice = choice.to_i
	 	@ttt_board[choice - 1] = marker
		@ttt_board

	end

	# def printboard()
     #      p "#{board.ttt_board[0]} || #{board.ttt_board[1]} || #{board.ttt_board[2]}"
     #      p "= || = || ="
     #      p "#{board.ttt_board[3]} || #{board.ttt_board[4]} || #{board.ttt_board[5]}"
     #      p "= || = || ="
     #      p "#{board.ttt_board[6]} || #{board.ttt_board[7]} || #{board.ttt_board[8]}"
     #      p "Place your marker, pick 1 thru 9."
     # end


	def fullboard?(ttt_board)
		if ttt_board.include?("1") || ttt_board.include?("2") || ttt_board.include?("3") || ttt_board.include?("4") || ttt_board.include?("5") || ttt_board.include?("6") || ttt_board.include?("7") || ttt_board.include?("8") || ttt_board.include?("9")
        		false
    		else
        		true
    		end
	end

  	def open_spot?(ttt_board, choice)
		x = choice.to_i
		if ttt_board[x - 1] == "x"
			false
		elsif ttt_board[x - 1] == "o"
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

	# def wins(ttt_board)
	#
	#
	# 	if ttt_board[0] == "x" && ttt_board[1] == "x" && ttt_board[2] == "x"
	# 		true
	# 	elsif ttt_board[3] == "x" && ttt_board[4] == "x" && ttt_board[5] == "x"
	# 	 	true
	# 	elsif ttt_board[6] == "x" && ttt_board[7] == "x" && ttt_board[8] == "x"
	# 	 	true
	# 	elsif ttt_board[0] == "x" && ttt_board[3] == "x" && ttt_board[6] == "x"
	# 	 	true
	# 	elsif ttt_board[1] == "x" && ttt_board[4] == "x" && ttt_board[7] == "x"
	# 	 	true
	# 	elsif ttt_board[2] == "x" && ttt_board[5] == "x" && ttt_board[8] == "x"
	# 	 	true
	# 	elsif ttt_board[0] == "x" && ttt_board[4] == "x" && ttt_board[8] == "x"
	# 	 	true
	# 	elsif ttt_board[2] == "x" && ttt_board[4] == "x" && ttt_board[6] == "x"
	# 	 	true
	# 	elsif ttt_board[0] == "o" && ttt_board[1] == "o"  && ttt_board[2] == "o"
	# 	 	true
	# 	elsif ttt_board[3] == "o" && ttt_board[4] == "o" && ttt_board[5] == "o"
	# 		true
	# 	elsif ttt_board[6] == "o" && ttt_board[7] == "o" && ttt_board[8] == "o"
	# 		true
	# 	elsif ttt_board[0] == "o" && ttt_board[3] == "o" && ttt_board[6] == "o"
	# 		true
	# 	elsif ttt_board[1] == "o" && ttt_board[4] == "o" && ttt_board[7] == "o"
	# 		true
	# 	elsif ttt_board[2] == "o" && ttt_board[5] == "o" && ttt_board[8] == "o"
	# 		true
	# 	elsif ttt_board[0] == "o" && ttt_board[4] == "o" && ttt_board[8] == "o"
	# 		true
	# 	elsif ttt_board[2] == "o" && ttt_board[4] == "o" && ttt_board[6] == "o"
	# 		true
	# 	else
	# 		false
	# 	end
	# end



end
