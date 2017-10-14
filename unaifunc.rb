#Unbeatable AI Functions

require_relative 'board.rb'
require_relative 'human.rb'

class Unai

     # attr_accessor :marker

     # def initialize(marker)
     #      @marker = marker
     # end

     def win(ttt_board, marker)
          state = [
               [ttt_board[0],ttt_board[1],ttt_board[2]],
               [ttt_board[3],ttt_board[4],ttt_board[5]],
               [ttt_board[6],ttt_board[7],ttt_board[8]],
               [ttt_board[0],ttt_board[3],ttt_board[6]],
               [ttt_board[1],ttt_board[4],ttt_board[7]],
               [ttt_board[2],ttt_board[5],ttt_board[8]],
               [ttt_board[0],ttt_board[4],ttt_board[8]],
               [ttt_board[2],ttt_board[4],ttt_board[6]]
          ]
          winnums = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
          choice = 10
          state.each_with_index do |arya, index|
               if arya.count(marker) == 2 && arya.count("") == 1
                    win = arya.index("")
                    choice = winnums[index][win]
               end
          end
          choice
     end


     def fmove(ttt_board)
          corner = [0,2,6,8]
          edge = [1,3,5,7]
          choice = 0

          if corner.any? {|a| ttt_board[a] == "x"}
               choice = 5
          elsif ttt_board[4] == "x"
               choice = 1
          else edge.any? {|a| ttt_board[a] == "x"}
               choice = 9
          end
     end

     def get_edge_if_perfect(ttt_board,player1,marker)

          state_diag =  [
          [ttt_board[0], ttt_board[4], ttt_board[8]],
          [ttt_board[2], ttt_board[4], ttt_board[6]]
          ]

          choice = 10

          state_diag.each_with_index do |arya, index|
               if arya.count(marker) == 1 && arya.count(player1) == 2
                    if
                         ttt_board[1] == ''
                         choice = 2

                    elsif
                         ttt_board[3] == ''
                         choice = 4

                    elsif
                         ttt_board[5] == ''
                         choice = 6

                    else
                         ttt_board[7] == ''
                         choice = 8
                    end
               end
         end
          choice
     end

     def getmove(ttt_board,player1,marker)
          if ttt_board.count(player1) <= 1
               fmove(ttt_board)
          elsif win(ttt_board,marker) <= 9
          else get_edge_if_perfect(ttt_board,player1,marker) <= 9

          end
     end
     # def smove(ttt_board)
     #      xoppc1 = [0,8]
     #      xoppc2 = [2,6]
     #      xoppe1 = [1,7]
     #      xoppe2 = [3,5]
     #      choice = 0
     #
     #      if xoppc1.all? {|a| ttt_board[a] == "x"}
     #           choice = 1
     #      elsif xoppc2.all? {|a| ttt_board[a] == "x"}
     #           choice = 3
     #      elsif ttt_board[0] == "x" && ttt_board[1] == "x"
     #           choice = 2
     #      elsif ttt_board[0] == "x" && ttt_board[3] == "x"
     #           choice = 6
     #      elsif ttt_board[8] == "x" && ttt_board[7] == "x"
     #           choice = 6
     #      elsif ttt_board[8] == "x" && ttt_board[5] == "x"
     #           choice = 2
     #      elsif ttt_board[2] == "x" && ttt_board[1] == "x"
     #           choice = 0
     #      else ttt_board[2] == "x" && ttt_board[5] == "x"
     #           choice = 8
     #      end
     # end
     #
     # def tmove(ttt_board)
     #
     # end


end
