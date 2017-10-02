require "minitest/autorun"
require_relative "ttt.rb"

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

	def test_fullboard_false()
		board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
		assert_equal(false, fullboard?(board))
	end

	def test_fullboard_true()
		board = ["x", "x", "x", "o", "o", "o", "x", "x", "x"]
		assert_equal(true, fullboard?(board))
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

	def test_wins()
		board = ["x", "x", "x", "4", "5", "6", "7", "8", "9"]
		player1 = "x"
		player2 = "o"
		assert_equal(true, wins(board, player1, player2))
	end

	def test_wins2()
		board = ["x", "2", "x", "4", "x", "6", "7", "8", "9"]
		player1 = "x"
		player2 = "o"
		assert_equal(true, wins(board, player1, player2))
	end

	def test_wins3()
		board = ["1", "2", "3", "o", "o", "o", "7", "8", "9"]
		player1 = "x"
		player2 = "o"
		assert_equal(true, wins(board, player1, player2))
	end

	def test_wins4()
		board = ["x", "o", "x", "4", "5", "6", "7", "8", "9"]
		player1 = "x"
		player2 = "o"
		assert_equal(false, wins(board, player1, player2))
	end



















end
