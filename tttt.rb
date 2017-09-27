require "minitest/autorun"
require_relative "ttt"

class Test_toe < Minitest::Test

	def test_tttup()

		board = ["1", "2". "3", "4", "5", "6", "7","8", "9"]
		choice = "2"
		player1 = x
		assert_equal(["1","x","3","4","5","6","7","8","9"], tttup(player1,choice))

	end

	

































end
