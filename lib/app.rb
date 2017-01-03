require 'sinatra/base'

class Battle < Sinatra::Base


    get '/' do
      @name =params[:player_name]
      erb(:index)
    end

    get '/name' do
      @name =params[:player_name]
      erb(:name)
    end
    run! if app_file == $0
end
