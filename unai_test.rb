#Test Unbeatable AI

require "minitest/autorun"
require_relative 'unaifunc.rb'

class Test_unai < Minitest::Test

    #  def test_win()
    #       unai = Unai.new
    #       ttt_board = ["x","x","","","","","","",""]
    #       marker = "x"
    #       assert_equal(2, unai.win(ttt_board,marker))
    #  end
     #
    #  def test_win2()
    #       unai = Unai.new
    #       ttt_board = ["o","","","o","","","","",""]
    #       marker = "o"
    #       assert_equal(6, unai.win(ttt_board,marker))
    #  end
     #
    #  def test_fmove()
    #       unai = Unai.new
    #       ttt_board = ["x","2","3","4","5","6","7","8","9"]
    #       player1 = "x"
    #       assert_equal(5, unai.fmove(ttt_board))
    #  end
     #
    #  def test_fmove_xcenter()
    #       unai = Unai.new
    #       ttt_board = ["1","2","3","4","x","6","7","8","9"]
    #       player1 = "x"
    #       assert_equal(1, unai.fmove(ttt_board))
    #  end
     #
    #  def test_fmove_xedge()
    #       unai = Unai.new
    #       ttt_board = ["1","x","3","4","5","6","7","8","9"]
    #       player1 = "x"
    #       assert_equal(5, unai.fmove(ttt_board))
    #  end
     #
    #  def test_getmove()
    #       unai = Unai.new
    #       ttt_board = ["x","","","","","","","",""]
    #       player1 = "x"
    #       marker = "o"
    #       assert_equal(5, unai.getmove(ttt_board,player1,marker))
    #  end

     def test_get_edge_if_perfect_1()
          unai = Unai.new("o")
          ttt_board = ["x","","","","o","","","","x"]
          player1 = "x"
          marker = "o"
          assert_equal(2, unai.get_edge_if_perfect(ttt_board))
     end

     def test_get_edge_if_perfect_2()
       unai = Unai.new("o")
       ttt_board = ["x","x","","","o","","","","x"]
       assert_equal(4, unai.get_edge_if_perfect(ttt_board))
    end

    def test_get_edge_if_perfect_3()
      unai = Unai.new("o")
      ttt_board = ["x","x","","x","o","","","","x"]
      assert_equal(6, unai.get_edge_if_perfect(ttt_board))
    end

    #  def test_if_edge_p1_2nd_move_1()
    #       unai = Unai.new
    #       ttt_board = ["x","","","","o","","","x",""]
    #       assert_equal(6, unai.if_edge_p1_2nd_move(ttt_board))
    #  end
     #
    #  def test_if_edge_p1_2nd_move_2()
    #       unai = Unai.new
    #       ttt_board = ["x","","","","o","x","","",""]
    #       assert_equal(3, unai.if_edge_p1_2nd_move(ttt_board))
    #  end
     #
    #  def test_if_edge_p1_2nd_move_3()
    #       unai = Unai.new
    #       ttt_board = ["","","x","","o","","","x",""]
    #       assert_equal(9, unai.if_edge_p1_2nd_move(ttt_board))
    #  end
    #  #
     # def test_smove_xoppc1()
     #      ttt_board = ["x","2","3","4","o","6","7","8","x"]
     #      assert_equal(1, unai.smove(ttt_board))
     # end
     #
     # def test_smove_xoppc2()
     #      unai = Unai.new
     #      ttt_board = ["1","2","x","4","o","6","x","8","9"]
     #      assert_equal(3, unai.smove(ttt_board))
     # end
     #
     # def test_smove_xoppe1()
     #      unai = Unai.new
     #      ttt_board = ["x","x","3","4","o","6","7","8","9"]
     #      assert_equal(2, unai.smove(ttt_board))
     # end
     #
     # def test_smove_edge2()
     #      unai = Unai.new
     #      ttt_board = ["x","2","3","x","o","6","7","8","9"]
     #      assert_equal(6, unai.smove(ttt_board))
     # end
     #
     # def test_smove_edge3()
     #      unai = Unai.new
     #      ttt_board = ["1","2","3","4","o","6","7","x","x"]
     #      assert_equal(6, unai.smove(ttt_board))
     # end
     #
     # def test_smove_edge4()
     #      unai = Unai.new
     #      ttt_board = ["1","2","3","4","o","x","7","8","x"]
     #      assert_equal(2, unai.smove(ttt_board))
     # end
     #
     # def test_smove_edge5()
     #      unai = Unai.new
     #      ttt_board = ["1","2","3","4","o","6","7","8","9"]
     #      assert_equal(0, unai.smove(ttt_board))
     # end




end
