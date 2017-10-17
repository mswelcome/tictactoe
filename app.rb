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
  msg = params[:msg] || ""
  session[:ttt_board] = session[:console].board.ttt_board


  erb :game, locals: {ttt_board: session{:ttt_board},msg: msg}
end

post '/loop' do
  choice = params[:choice]

  if session[:console].board.open_spot?(session[:ttt_board],choice) == true
    session[:console].board.tttup(session[:ttt_board],choice,session[:console].cp.marker)
  else redirect '/loop?msg=Invalid choice'
  end
  if session[:console].board.winner(session[:ttt_board]) || session[:console].board.fullboard?(session[:ttt_board])
    redirect '/gameresults'
  else
    choice = session[:console].player2.getmove(session[:ttt_board],session[:console].cp.marker,session[:console].player1.marker)
    session[:console].board.tttup(session[:ttt_board],choice,session[:console].cp.marker)
  end
  if session[:console].board.winner(session[:ttt_board]) || session[:console].board.fullboard?(session[:ttt_board])
    redirect '/gameresults'
  else redirect '/loop'
  end
end

get '/gameresults' do

end
