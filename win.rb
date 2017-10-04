#Testing Win function for Tic Tac Toe

def winner()
	winnums = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
	board = ["x", "x", "x", 4, "o", "o", 7, 8, 9]
	aryax = []
	aryao = []
	count = 0

	while count < 9
		if board[count] == "x"
			aryax << count
		end
		if board[count] == "o"
			aryao << count
		end
		count += 1
	end

	# while count < 9
	# 	puts aryax.include?(winnums[count])
	# 	count +=1
	# end

	winnums.each do |arya|
		# 	puts aryax
	# 	puts arya
	aryax.include?(arya)
	# 	aryao.eql?(arya)
	end

end

winner
