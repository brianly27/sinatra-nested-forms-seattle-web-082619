require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      binding.pry
      @pirate = params[:pirate]
      # binding.pry
      erb :'pirates/show'
    end


  end
end
