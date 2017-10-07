#Human Player class

class Human

     attr_accessor :marker

     def initialize(marker)
          @marker = marker
     end

     def getmove
          move = gets.chomp.to_i
     end

end
