require 'sinatra/base'
require_relative 'player'

class BattleShips < Sinatra::Base
  enable :sessions

  get '/' do
    puts session.inspect
    erb :index
  end

  get '/new_game' do
    puts session.inspect
    erb :new_game
  end

  post '/new_game' do
    puts session.inspect
    @name = params[:name]
    session[:name] = @name
    player = Player.new(@name)
    puts player.inspect
    erb :new_game
  end

  get '/new_board' do
    @name = params[:name]
    session[:name] = @name
    puts player.inspect
    erb :new_game
  end


set :views, Proc.new { File.join(root, '..', 'views') }
  # start the server if ruby file executed directly
  run! if app_file == $0
end
