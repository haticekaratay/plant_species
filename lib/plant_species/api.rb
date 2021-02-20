class API
 
    def self.get_data
        token = ENV["PLANT_SPECIES_TOKEN"]
        http_url = "https://trefle.io/api/v1/plants?token=#{token}&filter[edible_part]=roots,stem,leaves,flowers,fruits,seeds"
        #http_url = "https://trefle.io/api/v1/plants?token=#{token}&filter[ligneous_type]=tree&order[maximum_height_cm]=desc&&filter_not[maximum_height_cm]=null#{token}"
        @@plants = HTTParty.get(http_url)["data"]
       
        @@plants.each do |plant_hash|
           Plant.new(
               plant_hash["common_name"],
               plant_hash["scientific_name"],
               plant_hash["year"],
               plant_hash["genus"],
               plant_hash["family"]
           )
        end
        #binding.pry
    end
end
