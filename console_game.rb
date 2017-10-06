#Console Game

require_relative 'console.rb'
require_relative 'human.rb'
require_relative 'seqmove.rb'


console = Console.new

game = ""

until game == "done" do
     console.printboard
     choice = ""

      if console.cp.marker == "x"
        choice = gets.chomp.to_i
      else
        choice = console.seq_move(ttt_board)
      end

     console.valid_spot(choice)
     console.board.tttup(console.cp.marker, console.board.ttt_board)
     if console.board.wins(console.board.ttt_board)
          p "#{console.cp.marker} WINS!!!"
          game = "done"
          console.printboard
     elsif console.board.fullboard? == true
          console.select
     else
          p "TIE!!!"
          game = "done"
     end
end
