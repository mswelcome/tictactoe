#Testing Win function for Tic Tac Toe

def winner(board)
	winnums = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
	# aryax = []
	# aryao = []
	# count = 0

	# while count < 9
	# 	if board[count] == "x"
	# 		aryax << count
	# 	end
	# 	if board[count] == "o"
	# 		aryao << count
	# 	end
	# 	count += 1
	# end
	#
	#
	# # while count < 9
	# # 	puts aryax.include?(winnums[count])
	# # 	count +=1
	# # end

	winnums.any? do |arya|
		return true if arya.all? {|a| board[a] == "x"}
		return true if arya.all? {|a| board[a] == "o"}
	end

end

#winner
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
