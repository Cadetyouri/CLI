class Characters 
  attr_accessor :name ,:status ,:species,:gender, :origin
  @@all=[]
  
  def initialize(data_a)
    self.name=data_a["name"]
    self.status=data_a["status"]
    self.species=data_a["species"]
    self.gender=data_a["gender"]
    self.origin=data_a["origin"]
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 

end