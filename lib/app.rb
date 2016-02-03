require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

  get '/sign_up' do
    @player_one_name = params[:player_one_name]
    @player_two_name = params[:player_two_name]
    erb :player_sign_up
  end

  post '/names' do
    @player_one_name = params[:player_one_name]
    @player_two_name = params[:player_two_name]
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
