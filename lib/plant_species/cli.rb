class CLI
    def self.call
        API.create_plant
        intro
        display_list
        main_menu
        get_user_input
    end

    def self.display_list
        puts "Here is a list of plants for you to choose from: "
        puts 
        Plant.list_plants
        puts 
    end

    def self.intro
        puts 
        puts "********** Welcome to Plant Species Taxonomy viewer!**********".green.bold
        puts "--------------------------------------------------------------".green.bold
        puts 
        
    end

    def self.main_menu
        print "Type a number from the list to learn more about the plant. Or "
        puts "Type 'exit' to quit the program."
        puts "\n"
    
    end

    def self.get_user_input
        puts " "
        user_input = gets.chomp
        puts " "
        respond_to_user(user_input)
    end 

    def self.respond_to_user(user_input)
        range = Plant.all.count

        if (1..range).include?(user_input.to_i) 
            display_user_request(user_input)
            puts "Do you want to learn more about another plant? [y/n/exit]"
            puts
            ask_user_again

        elsif user_input.downcase == 'exit'
            bye
        

        elsif user_input.to_i < 0 || user_input.to_i > range || user_input == "0"
            puts "Out of range. Select a number from #{1} to #{range}"
            get_user_input
        
        else
            invalid
            main_menu
            get_user_input
        end
    end

    def self.bye
        puts
        puts "Thanks for using the app. See you next time!".bold.red
        puts 
    end

    def self.invalid
        puts 
        puts "Invalid input!".red
        puts 
       
    end


    def self.display_user_request(user_input)
        index = user_input.to_i - 1
        plant_name = Plant.all[index].common_name
        Plant.display_taxonomy(plant_name)
    end

    def self.ask_user_again(user_input = nil)
        
        user_input || user_input = gets.chomp.downcase
        if user_input.downcase == "y"
            puts 
            puts "Let's see the list again:"
            puts 
            Plant.list_plants
            puts 
            puts "Enter a number or exit"
            puts 
            get_user_input
        
        elsif user_input.downcase == "n" || user_input.downcase == "exit"
            bye
        else
            invalid
            puts "Please enter [y/n] or type exit!"
            input = gets.chomp
            ask_user_again(input)
        end
    end

end