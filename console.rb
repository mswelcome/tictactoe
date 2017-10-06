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
          if board.open_spot?(board.ttt_board, choice, cp.marker) == true
               board.tttup(ttt_board, choice, cp.marker)
          else
               board.open_spot?(board.ttt_board, choice, cp.marker) == false
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

     #  def playgame()
     #      game = "run"
     #      choice = ""
      #
     #      printboard
     #      until game == "done" do
     #           if cp.marker == "x"
     #                choice = gets.chomp.to_i
     #           else
     #                choice = player2.seq_move(board.ttt_board)
     #           end
      #
     #           valid_spot()
      #
     #           if board.wins(@ttt_board) == true
     #                p "Player #{@player} is the wins!"
     #                game = "done"
     #                printboard
     #           elsif board.fullboard?(board.ttt_board) == true
     #                select()
     #           else
     #                p "TIE!!!"
     #                game = "done"
     #           end
     #      end



end
#playgame()
