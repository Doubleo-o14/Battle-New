require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/names' do
    @player1 = []
    erb(:index)
  end

  post '/form' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end  

  get '/players' do
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end