#Unbeatable AI Functions

require_relative 'board.rb'
require_relative 'human.rb'

class Unai

     def fmove(ttt_board)
          xcorner = [0,2,6,8]
          xedge = [1,3,5,7]
          choice = 0
          if xcorner.any? {|a| ttt_board[a] == "x"}
               choice = 4

          elsif ttt_board[4] == "x"
               choice = 1
          else xedge.any? {|a| ttt_board[a] == "x"}
               choice = 9
          end
     end


end
