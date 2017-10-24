8# Tic Tac Toe Web app

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

post '/one_player' do

    diff = params[:diff]

    if diff == "Easy"
        session[:console].player2 = Seqmove.new("o")
    elsif diff == "TooEasy"
        session[:console].player2 = Random.new("o")
    else diff == "VictoryOrDeath"
        session[:console].player2 = Unai.new("o")
    end

    redirect '/game'

end

post '/two_player' do
    session[:p1name] = params[:p1name]
    session[:p2name] = params[:p2name]

    session[:console].player1 = Human.new('x')
    session[:console].player2 = Human.new('o')
    redirect '/game'
end


get '/game' do
    msg = params[:msg] || ""
    session[:ttt_board] = session[:console].board.ttt_board
    #xp = session[:console].player1.marker
    #op = session[:console].player2.marker


    erb :game, locals: {ttt_board: session{:ttt_board},msg: msg}
end

post '/loop' do
    choice = params[:choice]

    if session[:console].board.open_spot?(session[:ttt_board],choice) == true
        session[:console].board.tttup(session[:ttt_board],choice,session[:console].player1.marker)
    else redirect '/game?msg=Invalid choice'
    end

    if session[:console].board.winner(session[:ttt_board]) || session[:console].board.fullboard?(session[:ttt_board])
          redirect '/gameresults'
    else
        if session[:console].player2 == Human.new('o')
            if session[:console].board.open_spot?(session[:ttt_board],choice) == true
                session[:console].board.tttup(session[:ttt_board],choice,session[:console].player2.marker)
            else redirect '/game?msg=Invalid choice' + '&choice=' + choice
            end
        else
            choice = session[:console].cp.getmove(session[:ttt_board])
            session[:console].board.tttup(session[:ttt_board],choice,session[:console].player2.marker)
        end
    end


    if session[:console].board.winner(session[:ttt_board]) || session[:console].board.fullboard?(session[:ttt_board])
        redirect '/gameresults'
    else redirect '/game'
    end

end

get '/gameresults' do


    erb :gameresults, locals: {ttt_board: session[:ttt_board]}

end
