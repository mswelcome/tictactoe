# Tic Tac Toe Web app

require 'sinatra'
require_relative 'board.rb'
require_relative 'seqmove.rb'
require_relative 'rand.rb'
require_relative 'unaifunc.rb'
require_relative 'human.rb'
require_relative 'console.rb'
enable 'sessions'


get '/' do

    session[:console] = Console.new



     erb :root
end

post '/diff' do

     dif = params[:dif]

     if dif == "Easy"
          session[:console].player2 = Seqmove.new("o")
     elsif dif == "TooEasy"
          session[:console].player2 = Random.new("o")
     else dif == "VictoryOrDeath"
          session[:console].player2 = Unai.new("o")
     end

     redirect '/game'

end

get '/game' do
  session[:board] = session[:console].board.ttt_board


  erb :game, locals: {board: session{:board}}
end

post '/loop' do
  choice = params[:choice]



end
