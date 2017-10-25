# Tic Tac Toe Web app

require 'sinatra'
require_relative 'board.rb'
require_relative 'seqmove.rb'
require_relative 'rand.rb'
require_relative 'unaifunc.rb'
require_relative 'human.rb'
require_relative 'console.rb'
require_relative 'functions.rb'
enable 'sessions'


get '/' do

    session[:console] = Console.new


     erb :root
end

post '/player_setup' do

    #Variables to set Player1 and Player2 as Humans or Ai's8888
    diff = params[:diff]
    diff2 = params[:diff2]

    #

    if diff == "Easy"
        session[:console].player1 = Seqmove.new("x", params[:p1name])
    elsif diff == "TooEasy"
        session[:console].player1 = Random.new("x", params[:p1name])
    elsif diff == "VictoryOrDeath"
        session[:console].player1 = Unai.new("x", params[:p1name])
    else
        session[:console].player1 = Human.new('x',params[:p1name])
    end

    #
    if diff2 == "Easy"
        session[:console].player2 = Seqmove.new("o", params[:p2name])
    elsif diff2 == "TooEasy"
        session[:console].player2 = Random.new("o", params[:p2name])
    elsif diff2 == "VictoryOrDeath"
        session[:console].player2 = Unai.new("o", params[:p2name])
    else
        session[:console].player2 = Human.new("o", params[:p2name])
    end

    session[:console].cp = session[:console].player1
    #
    redirect '/game'

end

get '/game' do

    msg = params[:msg] || ""
    session[:ttt_board] = session[:console].board.ttt_board


    if session[:console].player1.class == Seqmove || session[:console].player1.class == Random || session[:console].player1.class == Unai && session[:console].player2 != Human
        aizen = ""
        until aizen == "dead"
            choice = session[:console].cp.getmove(session[:ttt_board])
            session[:console].board.tttup(session[:ttt_board],choice,session[:console].cp.marker)
            if session[:console].cp == session[:console].player1
                session[:console].select
                #redirect '/game'
            else session[:console].cp == session[:console].player2
                session[:console].select
                #redirect '/game'
            end

            if session[:console].board.winner(session[:ttt_board]) || session[:console].board.fullboard?(session[:ttt_board])
                aizen = "dead"
                redirect '/gameresults'
            else
                aizen = ""
            end
        end

    end



    erb :game, locals: {ttt_board: session[:ttt_board],msg: msg}
end

post '/loop' do
    choice = params[:choice]

    if session[:console].board.open_spot?(session[:ttt_board],choice) == true
            session[:console].board.tttup(session[:ttt_board],choice,session[:console].cp.marker)
    else
        redirect '/game?msg=Invalid choice'
    end

    if session[:console].board.winner(session[:ttt_board]) || session[:console].board.fullboard?(session[:ttt_board])
        redirect '/gameresults'
    else
        if session[:console].player2.class == Human
            if session[:console].cp == session[:console].player1
                session[:console].select
                redirect '/game'
            else session[:console].cp == session[:console].player2
                session[:console].select
                redirect '/game'
            end
        else
            choice = session[:console].player2.getmove(session[:ttt_board])
            session[:console].board.tttup(session[:ttt_board],choice,session[:console].player2.marker)
        end
    end

    if session[:console].board.winner(session[:ttt_board]) || session[:console].board.fullboard?(session[:ttt_board])
        redirect '/gameresults'
    else
        redirect '/game'
    end

end

get '/gameresults' do
    msg = params[:msg] || ""
    winner = ""

    if session[:console].board.winner(session[:ttt_board])
        winner = session[:console].cp.name
    else
        winner = "Tied Game"
    end


    insertgame(session[:console].player1.name,
               session[:console].player2.name,
               winner,
               Time.new.inspect
    )

    session[:table] = generate_table()

    erb :gameresults, locals: {ttt_board: session[:ttt_board],msg: msg}

end
