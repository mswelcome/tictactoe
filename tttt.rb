require "minitest/autorun"
require_relative "ttt"

class Test_toe < Minitest::Test

	def test_tttup()

		board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
		choice = 2
		player1 = "x"
		assert_equal(["1", "x", "3", "4", "5", "6", "7", "8", "9"], tttup(player1,choice))

	end

	def test_tttup_2()
    	board = ["1","2","3","4","5","6","7","8","9"]
    	player2 = "o"
    	choice = 4
    	assert_equal(["1","2","3","o","5","6","7","8","9"], tttup2(player2,choice))
	end 

	def test_tttup_3()
    	board = ["1","x","3","o","5","6","7","8","9"]
    	player1 = "x"
    	choice = 8
    	assert_equal(["1","x","3","o","5","6","7","x","9"], tttup3(board,player1,choice))
	end 


	def test_player1_x()
		player = "x"
		assert_equal("o", playerxo(player))
	end

	def test_player2_o()
		player = "o"
		assert_equal("x", playerxo(player))
	end






























end
