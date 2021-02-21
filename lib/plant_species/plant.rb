class Plant

    @@all = []

    attr_accessor :common_name , :scientific_name , :year, :genus, :family, :kingdom

    def initialize(common_name = nil, scientific_name = nil, year = nil, genus = nil, family= nil , kingdom = "Plantae")
        @common_name = common_name
        @scientific_name = scientific_name
        @year = year
        @genus = genus
        @family = family
        @kingdom = kingdom
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.list_plants
        @@all.each.with_index(1) do |plant_object,index|
            puts "#{index}. #{plant_object.common_name}"
        end
    end
    
end