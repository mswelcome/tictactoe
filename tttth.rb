require "minitest/autorun"
require_relative "ttth.rb"

class Test_toe_hash < Minitest::Test

	def test_1_1()
		assert_equal(1,1)
	end

	def test_board_update
        board = {"1"=> "","2" => "","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "",}
        player = "x"
        choice = "3"
        assert_equal({"1"=> "","2" => "","3"=> "x", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "",},board_up(board,player,choice))
    end

    def test_board_update2
        board = {"1"=> "","2" => "","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "",}
        player = "o"
        choice = "5"
        assert_equal({"1"=> "","2" => "","3"=> "x", "4"=> "", "5" => "o" ,"6" => "", "7" => "","8" => "", "9" => "",},board_up(board,player,choice))
    end