#Testing Win function for Tic Tac Toe

def winner()
	winnums = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
	board = ["x", "x", 3, "o", "o", "o", "7", 8, 9]
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

	winnums.any? do |arya|
		puts aryax.eql?(arya)
		puts aryao.eql?(arya)
	end

end

winner
