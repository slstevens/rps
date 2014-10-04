require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

set :views, Proc.new { File.join(root, ".." , "views") }
enable :sessions

GAME = Game.new
PLAYER = Player.new
OPPONENT = Player.new("Opponent")
GAME.player_one = PLAYER
GAME.player_two = OPPONENT

  get '/' do
    erb :index
  end

  get '/new_game' do
  	erb :game
  end

  post '/new_game' do
  	PLAYER.name = params[:name] 
  	erb :game
  end

  get '/result' do
  	erb :result
  end

  post '/result' do
  	PLAYER.choose(params[:object])
    OPPONENT.choose([:rock, :paper, :scissors].sample)
  	erb :result
  end

  post '/play_again' do
    erb :game
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
