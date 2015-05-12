require 'sinatra/base'
require 'battleships'


class BattleShips < Sinatra::Base

  set :views, Proc.new { File.join( root, "..", "views") } #tells sinatra where the views folder is

  get '/' do

    'Hello BattleShips!'
    erb :index
  end

  get '/newgame' do

      @game ||= Game.new Player, Board
      @ss = @game.own_board_view @game.player_1
      puts @game
      @player1 = params[:player1]
      erb :newgame
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
