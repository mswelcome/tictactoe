#Random Move Class

class Random

     attr_accessor :marker, :name

     def initialize(marker, name)
          @marker = marker
          @name = name
     end

     def getmove(ttt_board)
          move = ["1","2","3","4","5","6","7","8","9"]
          choice = move.sample.to_i
	end
end
