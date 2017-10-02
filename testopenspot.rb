#TDD for Openspot

require 'minitest/autorun'
require_relative 'openspot.rb'


class Test_openspot < Minitest::Test

  def test_openspot_1
      os = Openspot.new
      ttt_board = ["1","2","3","4","5","6","7","8","9"]
      assert_equal(0,os.open_spot(ttt_board))
  end

  def test_openspot_2
      os = Openspot.new
      ttt_board = ["x","o","3","4","5","6","7","8","9"]
      assert_equal(2,os.open_spot(ttt_board))
  end

  def test_openspot_3
      os = Openspot.new
      ttt_board = ["x","o","x","4","5","6","7","8","9"]
      assert_equal(3,os.open_spot(ttt_board))
  end

end
