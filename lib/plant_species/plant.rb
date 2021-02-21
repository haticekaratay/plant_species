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
    
    def self.display_taxonomy(plant_name)
        taxon = @@all.each do |plant_object|
            if plant_object.common_name == plant_name
                puts "The #{plant_object.common_name}, also scientifically known as #{plant_object.scientific_name} was first formally described in #{plant_object.year}. It's taxanomy as following:" 
                puts "Kingdom: #{plant_object.kingdom}"
                puts "Family: #{plant_object.family}"
                puts "Genus: #{plant_object.genus}"
                puts "Species: #{plant_object.scientific_name}"
            end
        end
        
    end

end