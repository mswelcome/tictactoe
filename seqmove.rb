#Sequential Move Spot Class

class Seqmove

     attr_accessor :marker

     def initialize(marker)
          @marker = marker
     end

    def getmove(ttt_board)
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

    def move
         move = ["1","2","3","4","5","6","7","8","9"]
         choice = ""
         move.each do |i|
              choice = i
         end
         choice.to_i
    end
end
