require './environment'


module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :index
    end

    get "/new" do
      erb :"/pirates/new"
    end

    post "/pirates" do
      pirate = params["pirate"]
      @pirate = Pirate.new(pirate["name"],pirate["weight"],pirate["height"])
      pirate["ships"].map do |ship|
        Ship.new(ship["name"],ship["type"],ship["booty"])
      end
      @ships = Ship.all
      erb :"/pirates/show"
    end

  end
end
