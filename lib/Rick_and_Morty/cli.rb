class Cli
    def call 
        puts "Welcome to Cli"
        puts "today I'm going to show you a list of characters from ick and Morty"
        Api.load_data
        menu
    end
    def menu 
        puts "Enter => 1 to list characters"
        puts "Enter  => 2 to list episode "
        puts "Enter => Exit to exit program "

        options 
    end 

    def options
        input = get_input
        if input =="1"
            list_characters
            menu
         elsif input == "2"
            pust "Listing episode "
            episode_list 
         elsif input == "exit"
            puts "closing cli..."
            exit 
         else
            invalid
            options
        end
    end 
end 