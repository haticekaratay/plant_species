class Plant

    @@all = []

    attr_accessor :common_name , :scientific_name , :year, :genus, :family

    def initialize(common_name = nil, scientific_name = nil, year = nil, genus = nil, family= nil)
        @common_name = common_name
        @scientific_name = scientific_name
        @year = year
        @genus = genus
        @family = family
    
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

        
end