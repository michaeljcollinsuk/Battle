require 'sinatra/base'
require 'rack'
require_relative 'player'


class Battle < Sinatra::Base
  # use Rack::Session::Pool, :expire_after => 2592000
  # set :sesion_secret, "super secret"


  get '/' do
    'Hello Battle!'
  end

  get '/sign_up' do
    erb :player_sign_up
  end

  post '/names' do
    $player_one = Player.new(params[:player_one_name])
    $player_two = Player.new(params[:player_two_name])
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one
    @player_two = $player_two
    erb :play
  end


  get '/attack' do
  @player_one = $player_one
  @player_two = $player_two
  @player_one.attack(@player_two)
  erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
