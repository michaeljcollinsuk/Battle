require 'sinatra/base'
require 'rack'
# enable :sessions

class Battle < Sinatra::Base
  use Rack::Session::Pool, :expire_after => 2592000
  set :sesion_secret, "super secret"
  get '/' do
    'Hello Battle!'
  end

  get '/sign_up' do
    @player_one_name = params[:player_one_name]
    @player_two_name = params[:player_two_name]
    erb :player_sign_up
  end

  post '/names' do
    session[:player_one_name] = params[:player_one_name]
    session[:player_two_name] = params[:player_two_name]
    redirect '/play'
  end

  get '/play' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
