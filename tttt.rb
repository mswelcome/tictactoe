require "minitest/autorun"
require_relative "ttt"

class Test_toe < Minitest::Test

	def test_1_1()
		assert_equal(1,1)
	end

	def test_player1move1()

		board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
		choice = 2
		player1 = "x"
		assert_equal(["1", "x", "3", "4", "5", "6", "7", "8", "9"], tttup1(board,player1,choice))

	end

	def test_player2move1()
    	board = ["1","x","3","4","5","6","7","8","9"]
    	player2 = "o"
    	choice = 4
    	assert_equal(["1","x","3","o","5","6","7","8","9"], tttup2(board,player2,choice))
	end 

	def test_player1move2()
    	board = ["1","x","3","o","5","6","7","8","9"]
    	player1 = "x"
    	choice = 8
    	assert_equal(["1","x","3","o","5","6","7","x","9"], tttup1(board,player1,choice))
	end

	def test_player2move2()
    	board = ["1","x","3","o","5","6","7","x","9"]
    	player2 = "o"
    	choice = 5
    	assert_equal(["1","x","3","o","o","6","7","x","9"], tttup2(board,player2,choice))
	end 


	def test_player1_x()
		player = "x"
		assert_equal("o", playerxo(player))
	end

	def test_player2_o()
		player = "o"
		assert_equal("x", playerxo(player))
	end

	def test_fullboard()
		board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
		assert_equal(true, fullboard(board))
	end

	def test_open_spot
		board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
		choice = "1"
		assert_equal(true, open_spot?(board, choice))
	end

	def test_open_spot2
		board = ["x", "2", "3", "4", "5", "6", "7", "8", "9"]
		choice = "1"
		assert_equal(false, open_spot?(board, choice))
	end

	def test_open_spot3
		board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
		choice = "4"
		assert_equal(true, open_spot?(board, choice))
	end
	

























end
