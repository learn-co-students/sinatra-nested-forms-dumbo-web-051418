class Pirate

  @@all = []

  def self.all
    @@all
  end
  
  attr_accessor :name, :weight, :height

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

end
