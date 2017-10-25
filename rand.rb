#Random Move Class

class Random

     attr_accessor :marker, :name

     def initialize(marker, name)
          @marker = marker
          @name = name
     end

     def getmove(ttt_board)
          blah = [0,1,2,3,4,5,6,7,8]
          choice = 11
          os = []

          ttt_board.each_with_index do |val, i|
              if ttt_board[i] == ""
                  os << i
              end
          end
        choice = os.sample
        choice
	end
end
