#Test Board


require "minitest/autorun"
require_relative "board.rb"

class Test_board < Minitest::Test

	def test_new_board()
		board = Board.new
		assert_equal([1,2,3,4,5,6,7,8,9], board.ttt_board)
	end

	def test_board_update()
		board = Board.new
		marker = "x"
		choice = 1
		assert_equal(["x",2,3,4,5,6,7,8,9], board.tttup(marker, choice))
	end

	def test_board_update2()
		board = Board.new
		marker = "x"
		choice = 7
		assert_equal([1,2,3,4,5,6,"x",8,9], board.tttup(marker, choice))
	end

	def test_board_full
		board = Board.new
		ttt_board = [1,2,3,4,5,6,7,8,9]
		assert_equal(false, board.fullboard?(ttt_board))

	end

	def test_board_full_true
		board = Board.new
		ttt_board = ["x", "x", "x", "o", "x", "o", "o", "x", "o"]
		assert_equal(true, board.fullboard?(ttt_board))
	end

	def test_open_spot?()
		board = Board.new
		ttt_board = [1,2,3,4,5,6,7,8,9]
		choice = 1
		assert_equal(true, board.open_spot?(ttt_board, choice))
	end

	def test_open_spot2
		board = Board.new
		ttt_board = ["x", 2, 3, 4, 5, 6, 7, 8, 9]
		choice = 1
		assert_equal(false, board.open_spot?(ttt_board, choice))
	end

	def test_wins()
		board = Board.new
		ttt_board = ["x", "x", "x", "4", "5", "6", "7", "8", "9"]
		assert_equal(true, board.wins(ttt_board))
	end

	def test_wins2()
		board = Board.new
		ttt_board = ["x", "2", "x", "4", "x", "6", "7", "8", "9"]
		assert_equal(false, board.wins(ttt_board))
	end

	def test_wins3()
		board = Board.new
		ttt_board = ["1", "2", "3", "o", "o", "o", "7", "8", "9"]
		assert_equal(true, board.wins(ttt_board))
	end

	def test_wins4()
		board = Board.new
		ttt_board = ["x", "o", "x", "4", "5", "6", "7", "8", "9"]
		assert_equal(false, board.wins(ttt_board))
	end






end
