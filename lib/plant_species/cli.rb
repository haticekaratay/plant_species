class CLI
    def self.call
        API.create_plant
        main_menu
    end

    def self.main_menu
        puts "Hello! Welcome to plant classification viewer! Below, you'll see a list of plant species you can learn more about them"
        Plant.list_plants
        get_user_input
    end

    def self.get_user_input
        puts "Please select a plant from the list by typing the corresponding number only!"
        user_input = gets.chomp
        @@user_index = user_input.to_i
        self.error
    end 

    def self.error
        range = Plant.all.count
        if (0..range).include?(@@user_index) 
            puts "displaying details"
        else
            puts "I don't get that. Please enter a number from the list or type 'exit' to quit."
        end
    end
   


end
