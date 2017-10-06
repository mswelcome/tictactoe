#Sequential Move Spot Class

class Seqmove

     attr_accessor :marker

     def initialize(marker)
          @marker = marker
     end

    def seq_move(ttt_board)
    move = ""
    choice = ["1","2","3","4","5","6","7","8","9"]
    count = 0

          until move == "taken"
               if ttt_board[count] == "x" || ttt_board[count] == "o"
                    count += 1
               else
                    move = "taken"
               end
         end

        choice[count]
    end
end
