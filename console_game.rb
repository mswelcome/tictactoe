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
        choice = console.player1.getmove
      else
        choice = console.player2.move #(console.board.ttt_board)
      end

     if console.board.open_spot?(console.board.ttt_board, choice) == true
          console.board.tttup(console.ttt_board, choice, console.cp.marker)
          if console.board.wins(console.board.ttt_board)
               p "#{console.cp.marker} WINS!!!"
               game = "done"
               console.printboard
          elsif console.board.fullboard?(console.board.ttt_board) == false
               console.select()
          else
               p "TIE!!!"
               console.printboard
               game = "done"
          end
     else
          console.board.open_spot?(console.board.ttt_board, choice) == false
          p "Invalid choice, try again."
     end
end
