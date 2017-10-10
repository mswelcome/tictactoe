#Testing Random Move class

require 'minitest/autorun'
require_relative 'rand.rb'

class Test_random < Minitest::Test

     def test_randmoves
          rand = Random.new("o")
          move = ["1","2","3","4","5","6","7","8","9"]
          choice = move.sample.to_i
          assert_equal(choice, rand.getmove(move,choice))
     end
end
