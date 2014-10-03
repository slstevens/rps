require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

set :views, Proc.new { File.join(root, ".." , "views") }
enable :sessions

  get '/' do
    erb :index
  end

  post '/new_game' do
  	    session[:name] = params[:name] 
  end

  get '/new_game' do
  	session[:name]= params[:name]
  	@name = session[:name]
  	erb :game
  end

  post '/result' do
  	erb :result
  end

  get '/result' do
  	erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
