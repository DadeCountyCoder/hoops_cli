# module HoopsCli

#     class Player
class HoopsCli::Player
  attr_accessor :name, :player_url, :number, :position 
  
  @@all = []
  
  # def initialize(player_url, name, number, position)
  #   @name = name 
  #   @player_url = player_url
  #   @number = number
  #   @position = position
    @@all << self
  # end 
 
  def self.all 
    @@all 
  end



end
