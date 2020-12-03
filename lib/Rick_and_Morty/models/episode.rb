class Episode 
    attr_accessor :name,:air_date,:episode
    @@all=[]

    def initialize(data_b)
        self.name=data_b["name"]
        self.air_date=data_b["air_date"]
        self.episode=data_b["episode"]
        @@all << self
    end

    def self.all
        @@all
    end 





end 