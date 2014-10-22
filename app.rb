require_relative 'config/environment'
require 'pry'

class GameApp < Sinatra::Base
  get '/rps/:play' do
    @game = RPSGame.new(params[:play])
    erb :rps_game
  end
end
