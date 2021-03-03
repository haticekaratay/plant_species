class API

    #returns an array including hashes of all plants from the API.
    def self.get_data
        token = ENV["PLANT_SPECIES_TOKEN"]
        http_url = "https://trefle.io/api/v1/plants?token=#{token}"
        @@plants = HTTParty.get(http_url)["data"]   
    end

    
    def self.create_plant
        self.get_data.each do |plant_hash|
           Plant.new(
               plant_hash["common_name"],
               plant_hash["scientific_name"],
               plant_hash["year"],
               plant_hash["genus"],
               plant_hash["family"]
           )
        end 
    end

end