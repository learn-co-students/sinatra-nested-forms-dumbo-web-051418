class Ship
  attr_accessor :name, :type, :booty

  @@all =[]

  def initialize(ship_data)
    @name = ship_data[:name]
    @type = ship_data[:type]
    @booty = ship_data[:booty]

    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
