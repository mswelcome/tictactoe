#Console Game

require_relative 'console.rb'
require_relative 'human.rb'
require_relative 'seqmove.rb'


console = Console.new
game = ""

until game == "done" do
     console.printboard
     human.gethmove
     console.valid_spot
     console.board.tttup(console.cp.marker, console.board.ttt_board)
     if console.board.wins(console.board.ttt_board)
          p "#{console.cp.marker} WINS!!!"
          game = "done"
     elsif console.board.fullboard? == true
          p "TIE!!!"
          game = "done"
     else console.select
          move =
     end
