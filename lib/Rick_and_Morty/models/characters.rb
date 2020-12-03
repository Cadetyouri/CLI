class Characters
    #attr_accessor :name , :age , :location
    @@all=[]

    def initialize(name:,age:,location:)
        args.each {|key, value, ahd | self.send("#{key}=", value" , "ahd)}
    end

    def self.all
      @@all
    end 
end


# args.each {|key, value | self.send("#{key}=", value")}