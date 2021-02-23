class CLI
    def self.call
        API.create_plant
        intro
        display_list
        main_menu
        
    end

    def self.display_list
        puts "\n"
        Plant.list_plants
        puts "\n"
    end

    def self.intro
        puts "\n"
        puts "********** Welcome to Plant Taxonomy viewer!**********"
        puts "------------------------------------------------------"
        puts "Please wait. Loading...."
        puts "\n"
        #sleep (2)
        puts "\n"
        puts "Here is a list of plant for you to examine. "
    end

    def self.main_menu
        puts "\n"
        puts "Type a number from the list."
        puts "           or      "
        puts "Type 'exit' to quit program!"
        puts "\n"
        get_user_input
    end

end