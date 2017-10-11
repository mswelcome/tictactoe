#Random Move Class

class Random

     attr_accessor :marker

     def initialize(marker)
          @marker = marker
     end


     # def valid_space?(ttt_board, choice)
	#      board[choice] == choice
     # end

     def getmove()
          move = ["1","2","3","4","5","6","7","8","9"]
          choice = move.sample.to_i

          # move = rand(1..9).
          # if valid_space?(ttt_board, random_move) == false
		#      getmove(board)
	     # else
		#      random_move
		# end
	end


     # def randmoves(ttt_board)
     #      choice = ["1","2","3","4","5","6","7","8","9"]
     #      count = 0
     #      move = ""
     #      rand_move = ""
     #      until move == "taken"
     #           rand_move = choice.sample.to_i
     #           if board[rand_move - 1] == choice[rand_move - 1]
     #                move == "taken"
     #           end
     #      end
     #      rand_move
     #      rm = rand_move - 1
     #      rm
     # end

end
