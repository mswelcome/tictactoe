#Sequential Open Spot Class

class Openspot

    def open_spot(ttt_board)
    move = ""
    choice = [0,1,2,3,4,5,6,7,8]
    count = 0
        until move == "taken"
            if ttt_board[choice[count]] == "x" || ttt_board[choice[count]] == "o"
                count += 1
            else
                move = "taken"
            end
        end

        choice[count]
    end
end
