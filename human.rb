#Human Player class

class Human

     attr_accessor :marker

     def initialize(marker)
          @marker = marker
     end

     def gethmove
          hmove = gets.chomp.to_i
     end
     
end
