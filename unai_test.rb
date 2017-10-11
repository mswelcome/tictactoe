#Test Unbeatable AI

require "minitest/autorun"
require_relative 'unaifunc.rb'

class Test_unai < Minitest::Test

     def test_fmove()
          unai = Unai.new
          ttt_board = ["x","2","3","4","5","6","7","8","9"]
          assert_equal(4, unai.fmove(ttt_board))
     end






















end
