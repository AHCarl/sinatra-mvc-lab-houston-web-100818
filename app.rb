require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end
  
  # get '/piglatinize' do 
  #   erb :output 
  # end

  post '/piglatinize' do
    @phrase = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :output
    # redirect '/piglatinize'
  end
end