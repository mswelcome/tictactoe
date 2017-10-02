#TDD for Openspot

require 'minitest/autorun'
require_relative 'openspot.rb'


class Test_seqmove < Minitest::Test

  def test_seqmove_1
      os = Seqmove.new
      ttt_board = ["1","2","3","4","5","6","7","8","9"]
      assert_equal(0,os.seq_move(ttt_board))
  end

  def test_seqmove_2
      os = Seqmove.new
      ttt_board = ["x","o","3","4","5","6","7","8","9"]
      assert_equal(2,os.seq_move(ttt_board))
  end

  def test_seqmove_3
      os = Seqmove.new
      ttt_board = ["x","o","x","4","5","6","7","8","9"]
      assert_equal(3,os.seq_move(ttt_board))
  end

end
