#Testing win.rb

require "minitest/autorun"
require_relative "win.rb"

class Test_win < Minitest::Test

  def test_wins()
		board = ["x", "x", "x", "4", "5", "6", "7", "8", "9"]
		player1 = "x"
		player2 = "o"
		assert_equal(true, wins(board, player1, player2))
	end
