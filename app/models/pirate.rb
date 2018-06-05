class Pirate

  attr_accessor :name, :weight, :height

  @@all =[]

  def initialize(pirate_data)
    @name = pirate_data[:name]
    @weight = pirate_data[:weight]
    @height = pirate_data[:height]
  end

  def self.all
    @@all
  end
end
