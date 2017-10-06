#Console Game Class

class Console

require_relative 'board.rb'
require_relative 'seqmove.rb'
require_relative 'human.rb'


     attr_accessor :ttt_board, :player1, :board, :player2, :cp

     def initialize
          @board = Board.new
          @player1 = Human.new("x")
          @player2 = Seqmove.new("o")
          @cp = player1
      end

     def printboard()
          p "#{board.ttt_board[0]} || #{board.ttt_board[1]} || #{board.ttt_board[2]}"
          p "= || = || ="
          p "#{board.ttt_board[3]} || #{board.ttt_board[4]} || #{board.ttt_board[5]}"
          p "= || = || ="
          p "#{board.ttt_board[6]} || #{board.ttt_board[7]} || #{board.ttt_board[8]}"
          p "Place your marker, pick 1 thru 9."
     end

     def valid_spot(choice)
          if board.open_spot?(board.ttt_board, choice) == true
               board.tttup(ttt_board, choice, cp.marker)
          else
               board.open_spot?(board.ttt_board, choice) == false
               p "Invalid choice, try again."

          end
     end

     def select
          if cp == player1
               @cp = player2
          else cp == player2
               @cp = player1
          end
     end

end
