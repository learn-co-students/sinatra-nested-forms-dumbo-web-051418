class Ship
  attr_accessor :name, :type, :booty, :pirate

  @@all = []
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @pirate = nil

    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
