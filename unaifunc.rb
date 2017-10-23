#Unbeatable AI Functions

class Unai

     attr_accessor :marker

     def initialize(marker)
          @marker = marker
     end

     def win(ttt_board,marker)
          #p "WIN"
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
                #p "#{arya} QWERTY"
                if arya.count(marker) == 2 && arya.count("") == 1
                    win = arya.index("")
                    choice = winnums[index][win]
               end
          end

          #p "#{choice} WIN"
          choice + 1
     end

     def block(ttt_board)
          #p "BLOCK"
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
                #p "#{arya} QWERTY"
                if arya.count("x") == 2 && arya.count("") == 1
                    win = arya.index("")
                    choice = winnums[index][win]
               end
          end

          #p "#{choice} BLOCK"
          choice + 1
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
               choice = 5
          end
     end

     def get_edge_if_perfect(ttt_board)

          state_diag =  [
          [ttt_board[0], ttt_board[4], ttt_board[8]],
          [ttt_board[2], ttt_board[4], ttt_board[6]]
          ]

          choice = 10

          #p "Blah "

          state_diag.each_with_index do |arya, index|
               if arya.count("o") == 1 && arya.count("x") == 2
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
         #p "#{choice} CHOICE"
          choice
     end

     def if_edge_p1_2nd_move(ttt_board)

          one_eight = [0,7]
          one_six = [0,5]
          three_eight = [2,7]
          three_four = [3,4]
          seven_two = [1,6]
          seven_six = [5,6]
          nine_two = [1,8]
          nine_four = [3,8]
          choice = 10

          #p "EDGE"

          if one_eight.all? {|a| ttt_board[a] == "x"}
               choice = 6
          elsif one_six.all? {|a| ttt_board[a] == "x"}
               if ttt_board[2] == ''
                    choice = 3
               else choice = freechoice(ttt_board)
               end
          elsif three_eight.all? {|a| ttt_board[a] == "x"}
               if ttt_board[8] == ''
                    choice = 9
               else choice = freechoice(ttt_board)
               end
          elsif three_four.all? {|a| ttt_board[a] == "x"}
               if ttt_board[0] == ''
                    choice = 1
               else choice = freechoice(ttt_board)
               end
          elsif seven_two.all? {|a| ttt_board[a] == "x"}
               choice = 1
          elsif seven_six.all? {|a| ttt_board[a] == "x"}
               if ttt_board[2] == ''
                    choice = 3
               else choice = freechoice(ttt_board)
               end
          elsif nine_two.all? {|a| ttt_board[a] == "x"}
               if ttt_board[0] == ''
                    choice = 1
               else choice = freechoice(ttt_board)
               end
          else nine_four.all? {|a| ttt_board[a] == "x"}
               choice = 1
          end
          #p "#{choice}"
          choice
     end

     def freechoice(ttt_board)
          choice = 10
          os = []
          ttt_board.each_with_index do |arya, i|
               if arya == ''
                    os << i
               end
          end
          choice = os.sample
     end




     def getmove(ttt_board,marker,player1)
          choice = 10
          if ttt_board.count(player1) <= 1
               choice = fmove(ttt_board)
          elsif win(ttt_board,marker) <= 9
              choice = win(ttt_board,marker)
          elsif block(ttt_board) <= 9
              choice = block(ttt_board)
          elsif get_edge_if_perfect(ttt_board) <=9
              choice = get_edge_if_perfect(ttt_board)
          elsif if_edge_p1_2nd_move(ttt_board) <=9
              choice = if_edge_p1_2nd_move(ttt_board)
          else freechoice(ttt_board) <=9
              choice = freechoice(ttt_board)
          end
          choice
     end
end
