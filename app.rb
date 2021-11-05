require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = params[:player1]
    $player2 = params[:player2]
    redirect "/play"
  end 
  
  get "/play" do
    @player1 = $player1
    @player2 = $player2
    erb :play
  end

  get "/attack" do
    @player1 = $player1
    @player2 = $player2
    erb :attack
  end


  run! if app_file == $0

end