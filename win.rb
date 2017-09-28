#Testing Win function for Tic Tac Toe

def winner()
	winnums = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
	board = ["x", "x", "x", 3, 4, 5, 6, 7, 8]
	aryax = []
	aryao = []
	count = 0

	while count < 9 
		if board[count] == "x"
			aryax << count
		end
		count += 1
	end

	puts aryax
	puts winnums.include?(aryax)

end

winner