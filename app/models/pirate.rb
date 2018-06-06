require 'pry'
class Pirate
  attr_accessor :name, :weight, :height, :ships

  @@all = []
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @ships = params[:ships].collect {|ship| Ship.new(ship) }
    @@all << self
  end

  def add_ship(ship)
    ships << ship
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
