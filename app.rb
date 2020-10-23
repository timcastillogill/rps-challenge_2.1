require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/draw' do
    session[:weapon] = params[:weapon].to_sym
    session[:computer_weapon] = Computer.new.computers_turn.capitalize
    session[:result] = Game.new.game_result
    redirect '/result'
  end

  get '/result' do
    @name  = session[:name]
    @user_weapon = session[:weapon] 
    p "Here is the the end"
    @computer_weapon = session[:computer_weapon]
    @result = session[:result]
    erb :result
  end


  run! if app_file == $0
end