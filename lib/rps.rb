require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

set :views, Proc.new { File.join(root, ".." , "views") }
enable :sessions

  get '/' do
    erb :index
  end

  get '/new_game' do
  	erb :game
  end

  post '/new_game' do
  	session[:name] = params[:name] 
  	erb :game
  end

  get '/result' do
  	erb :result
  end

  post '/result' do
  	session[:object] = params[:object] 
  	erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
