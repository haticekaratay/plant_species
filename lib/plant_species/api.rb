class API

    def self.get_data
        token = ENV["PLANT_SPECIES_TOKEN"]
        #http_url = "https://trefle.io/api/v1/plants?token=#{token}&filter[edible_part]=roots,stem,leaves,flowers,fruits,seeds"
        #http_url = "https://trefle.io/api/v1/plants?token=#{token}&filter[ligneous_type]=tree&order[maximum_height_cm]=desc&&filter_not[maximum_height_cm]=null#{token}"
        http_url = "https://trefle.io/api/v1/plants?token=#{token}"
        @@plants = HTTParty.get(http_url)["data"]   
    end

end