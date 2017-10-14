#Console Game Class

class Console

require_relative 'board.rb'
require_relative 'seqmove.rb'
require_relative 'human.rb'
require_relative 'unaifunc.rb'
require_relative 'console.rb'


     attr_accessor :ttt_board, :player1, :board, :player2, :cp, :showboard

     def initialize
          @board = Board.new
          @showboard = ["1","2","3","4","5","6","7","8","9"]
          @player1 = Human.new("x")
          @player2 = Unai.new("o")
          @cp = player1
      end

     def printboard()
          p "#{showboard[0]} || #{showboard[1]} || #{showboard[2]}"
          p "= || = || ="
          p "#{showboard[3]} || #{showboard[4]} || #{showboard[5]}"
          p "= || = || ="
          p "#{showboard[6]} || #{showboard[7]} || #{showboard[8]}"
          p "Place your marker, pick 1 thru 9."
     end

     def sbup(showboard, choice, marker)
          choice = choice.to_i
          @showboard[choice - 1] = marker
          @showboard
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
