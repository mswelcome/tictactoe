# Tic Tac Toe Web app

require 'sinatra'
require_relative 'board.rb'
require_relative 'seqmove.rb'
require_relative 'rand.rb'
require_relative 'unaifunc.rb'
require_relative 'human.rb'
enable 'sessions'


get '/' do

     session[:console] = Console.new
     erb: root

end

post '/diff' do

     dif = dif[:params]

     if dif == "Easy"
          session[:console].@player2 = Seqmove.new("o")
     elsif dif == "TooEasy"
          session[:console].@player2 = Random.new("o")
     else dif == "VictoryOrDeath"
          session[:console].@player2 = Unai.new("o")
     end

     redirect '/game'

end

get '/game' do

     
end
