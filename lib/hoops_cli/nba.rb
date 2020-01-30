require 'pry'
class HoopsCli::Nba
  
  attr_accessor :url, :name, :pl_num, :pl_pos 
  
  @@all = []
  
  def initialize(url, name, pl_num, pl_pos)
    @name = name 
    @url = url
    @pl_num = pl_num
    @pl_pos = pl_pos
    @@all << self
    # binding.pry

  end 
 
  def self.all 
    @@all 
  end
end 

# if need be could add  :url to attr & url to initialize argument