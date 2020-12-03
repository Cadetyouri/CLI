class Api 


    def self.load_api
        "https://rickandmortyapi.com/api/character/1,100"
        
    end

    def self.load_data
        load_characters
    end
    def self.load_characters
        response=RestClient.get(load_api)
        data=JSON.parse(response.body)
        
        data.each do |character|
            Characters.new(character)
        end
        
    end 
   
end