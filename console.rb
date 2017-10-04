#Console Game Class

class Console

require_relative 'board.rb'
require_relative 'seqmove.rb'


     attr_accessor :ttt_board
     attr_accessor :player

     def initialize
          @ttt_board
          @player
     end

     def playgame
          @player = "x"
          game = 'run'
          @ttt_board = [1,2,3,4,5,6,7,8,9]

          until game == 'done' do
               p '#{ttt_board[0]} || #{ttt_board[1]} || #{ttt_board[2]}'
               p '= || = || ='
               p '#{ttt_board[3]} || #{ttt_board[4]} || #{ttt_board[5]}'
               p '= || = || ='
               p '#{ttt_board[6]} || #{ttt_board[7]} || #{ttt_board[8]}'
               p 'Place your marker, pick 1 thru 9.' 
