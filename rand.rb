#Random Move Class

class Random


     def valid_space?(ttt_board, choice)
	     board[choice] == choice
     end

     def get_move(ttt_board)
          random_move = rand(1..9)
          if valid_space?(ttt_board, random_move) == false
		     get_move(board)
	     else
		     random_move
		end
	end

     def randmoves(board, choice)
          choice = ["1","2","3","4","5","6","7","8","9"]
          count = 0
          move = ""
          rand_move = ""
          until move == "taken"
               rand_move = choice.sample.to_i
               if board[rand_move - 1] == choice[rand_move - 1]
                    move == "taken"
               end
          end
          puts rand_move
          rm = rand_move - 1
          puts rm
     end

     



end
