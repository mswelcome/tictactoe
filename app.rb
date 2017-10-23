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
     choice = params[:choice]
     msg = params[:msg] || ""
     session[:ttt_board] = session[:console].board.ttt_board
     xp = session[:console].player1.marker
     op = session[:console].player2.marker


     erb :game, locals: {ttt_board: session{:ttt_board},msg: msg,choice: choice}
end

post '/loop' do
  choice = params[:choice]

  if session[:console].board.open_spot?(session[:ttt_board],choice) == true
    session[:console].board.tttup(session[:ttt_board],choice,session[:console].cp.marker)
  else redirect '/game?msg=Invalid choice' + '&choice=' + choice
  end
  if session[:console].board.winner(session[:ttt_board]) || session[:console].board.fullboard?(session[:ttt_board])
    redirect '/gameresults'
  else
    choice = session[:console].cp.getmove(session[:ttt_board],session[:console].player2.marker,session[:console].player1.marker)
    session[:console].board.tttup(session[:ttt_board],choice,session[:console].player1.marker)
  end
  if session[:console].board.winner(session[:ttt_board]) || session[:console].board.fullboard?(session[:ttt_board])
    redirect '/gameresults'
  else redirect '/game'
  end
end

get '/gameresults' do




end
