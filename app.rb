require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      pirate = params[:pirate]
      @pirates = Pirate.new(pirate[:name], pirate[:weight], pirate[:height])

      params[:pirate][:ships].each do |details|
      Ship.new(details[:name], details[:type], details[:booty])
      end

      @ships = Ship.all
      # binding.pry 
      erb :third
    end

  end
end
