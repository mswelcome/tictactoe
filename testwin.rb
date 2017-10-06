#Testing win.rb

require "minitest/autorun"
require_relative "win.rb"

class Test_win < Minitest::Test

  def test_wins1()
		board = ["x", "x", "x", "4", "5", "x", "7", "8", "9"]
		player1 = "x"
		player2 = "o"
		assert_equal(true, winner(board))
	end

     def test_wins2()
          board = ["x", "x",3,4,5,6,"x",8,9]
          assert_equal(false, winner(board))
     end

     def test_wins3()
          board = ["x", "o", "x", 4, "o", 6, 7, "o", 9]
          assert_equal(true, winner(board))
     end

     def test_wins4()
          board = ["o","x","x","o",5,6,"o",8,9]
          assert_equal(true, winner(board))
     end

end
