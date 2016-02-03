require 'sinatra/base'
require 'rack'
require_relative 'player.rb'
# enable :sessions

class Battle < Sinatra::Base
  use Rack::Session::Pool, :expire_after => 2592000
  set :sesion_secret, "super secret"

  STARTING_HP = 100
  ATTACK_HP = 10

  get '/' do
    'Hello Battle!'
  end

  get '/sign_up' do
    @player_one_name = params[:player_one_name]
    @player_two_name = params[:player_two_name]
    erb :player_sign_up
  end

  post '/names' do
    session[:player_one_name] = Player.new(params[:player_one_name])
    session[:player_two_name] = Player.new(params[:player_two_name])
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one_name]
    @player_two = session[:player_two_name]
    erb :play
  end


  get '/attack' do
  @player_one = session[:player_one_name]
  @player_two = session[:player_two_name]
  erb :attack
  end

  # def attack_player_one
  #   attack_hp = (10 * counter)
  #   @player_one_hp = STARTING_HP - attack_hp
  #   counter += 1
  # end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
