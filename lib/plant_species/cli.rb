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

   


    def self.get_user_input
        user_input = gets.chomp
        puts " "
        respond_to_user(user_input)
    end 

    def self.respond_to_user(user_input)
        range = Plant.all.count
        #index = user_input.to_i - 1
        
        if user_input == 'exit'
            bye

        elsif (1..range).include?(user_input.to_i) ##&& user_input.to_i > 0
            display_user_request(user_input)
            puts "Do you want to learn more about another plant? [y/n]"
            #plant_name = Plant.all[index].common_name
            #Plant.display_taxonomy(plant_name)
            ask_user_again
        
        elsif user_input.to_i < 0 || user_input.to_i > range
            puts "Out of range. Select a number from #{1} to #{range}"
            get_user_input
        
        else
            puts "\n"
            invalid
            # puts "I don't get that."
            # puts "See the list again."
            # Plant.list_plants
            # get_user_input
        end
    end

    def self.bye
        puts "Thanks for using the app. See you next time!"
        puts ""
    end

    def self.invalid
        puts "\n"
            puts "I don't get that."
            puts "----------------"
            #puts "Please select a number from the list or type 'exit'"
            #display_list
            main_menu
    end


    def self.display_user_request(user_input)
        index = user_input.to_i - 1
        plant_name = Plant.all[index].common_name
        Plant.display_taxonomy(plant_name)
    end

     def self.ask_user_again(user_input = nil)
        #puts "Do you want to learn more about another plant? [y/n]"
         user_input || user_input = gets.chomp.downcase
        if user_input == "y"
            puts "Going back to main menu."
            puts " Loading....."
            sleep (2)
            puts "*****************************"
            puts "  Let's see the list again:"
            puts "\n"
            Plant.list_plants
            puts "\n"
            puts "Enter a number or exit"
            puts " "
            get_user_input
        
        elsif user_input == "n"
            bye
        else
            puts "Invalid input!"
            puts "Please enter [y/n] or type exit!"
            
            input = gets.chomp
            ask_user_again(input)

        end
    end

end
