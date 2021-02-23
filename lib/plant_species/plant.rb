class Plant

    attr_accessor :common_name , :scientific_name , :year, :genus, :family, :kingdom

    def initialize(common_name = nil, scientific_name = nil, year = nil, genus = nil, family= nil , kingdom = "Plantae")
        @common_name = common_name
        @scientific_name = scientific_name
        @year = year
        @genus = genus
        @family = family
        @kingdom = kingdom
        
    end
end