class Api 
    def self.base_url
        "https://rickandmortyapi.com/api/"
    end 
    
    def self.load_data
        load_characters 
        load_episodes 
    end 

    
       def self.load_characters
           while true
              num = 1 
              response=RestClient.get(base_url+"/character/?page=#{num}")
               data =JSON.parse(response.body)
                data["results"].each do |data_a|  
                  Characters.new(data_a)
                    # binding.pry
                end 
              #binding.pry
               if data["next"].nil?
                  break
                end 
                 num +=1
            end
        end 

    def self.load_episodes
        while true
            num = 1 
           response=RestClient.get(base_url+"/episode/?page=#{num}")
            data =JSON.parse(response.body)
            #binding.pry
            data["results"].each do |data_b|  
             Episode.new(data_b)
               # binding.pry
            end 
             if data["next"].nil?
               break
             end 
            num +=1
        end 


    end 
end 