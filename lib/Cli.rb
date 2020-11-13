class Cli

    attr_reader :prompt, :scene_selection, :budget

    def initialize 
        @prompt = TTY::Prompt.new
        @scene_selection = ''
        @budget = nil
        @final_destination = ''
        @cityname = ''
        @final_selection = nil
        @starwars = TTY::Font.new(:starwars)
        @doom = TTY::Font.new(:standard, letter_spacing: 13)
        @pastel = Pastel.new
        @answer = nil

    end

    @@favorite_destinations = []
    @@favorite_activities = []


    def start_app
        welcome()
        sleep(5)
        clear
        main_menu()
    end

    def main_menu
        selection = prompt.select(@pastel.green("What would you like to do?"), 
            ["Filter by budget",
             "Filter by scene" ,
              "Help me decide?!",
               "Browse destination", 
               "Itinerary", 
                "Exit"], symbols: { marker: "🌎"})
            if selection == "Filter by budget"
                filter_by_budget
            elsif selection == "Filter by scene"
                filter_by_scene
            elsif selection == "Help me decide?!"
                filter_by_budget_and_scene
            elsif selection == "Browse destination"
                browse_all_destinations
            elsif selection == "Itinerary"
                itinerary_options
            elsif selection == "Exit"
                
                 puts @pastel.bright_magenta.bold("Thank you for using Covid Traveler to search your destination")
                 
            end
    end

def main_exit
    choice = prompt.select(@pastel.green('Would you like to add to itinerary, go to the main menu, or exit?'), ["main menu", "add to itinerary", "exit"], symbols: { marker: "🌎"})
        if choice == "main menu"
            clear
            main_menu
        elsif choice == "add to itinerary"
            clear
            add_itinerary
            main_menu
        elsif choice == "exit"
            clear
            puts @pastel.bright_magenta.bold("THANK YOU FOR USING COVID TRAVELER FOR ALL YOUR COVID TRAVELING NEEDS!!!")
        end
end

def exit_app
     system `say "Thank you for using Covid Traveler to search your destination. Don't forget to wear a mask and wash your hands."`
end

    def itinerary_options
        itinerary_answer = prompt.select(@pastel.green("What would you like to do with your itinerary?"),
            "Remove destination", "View itinerary", "Add activity", "Remove activity", "Main menu", symbols: { marker: "🛩"})
            case itinerary_answer
            when "Remove destination"
                clear
                remove_destination
            when "View itinerary"
                clear
                view_itinerary
                itinerary_options
            when "Add activity"
                clear
                add_activities
                itinerary_options
            when "Remove activity"
                clear
                remove_activities
                itinerary_options
            when "Main menu"
                clear
                main_menu
            end
    end

    def activities_of_current_favorite_destinations
        @answer = @@favorite_destinations.map {|location| location.activities}.flatten
    end

    def add_activities
        array_check
        activities_of_current_favorite_destinations
        answer = @answer.map {|activity| activity.name }
        favorite_activity = prompt.select(@pastel.green('Please select the activity you would like to add'), answer, symbols: { marker: "🏐"})
        @@favorite_activities << favorite_activity
        puts @pastel.red("#{favorite_activity} was added to activities")
    end

    def remove_activities
        array_check_activities
        remove = prompt.select(@pastel.green('Please select the activity you would like to remove'), @@favorite_activities )
        @@favorite_activities = @@favorite_activities.select {|activity| activity != remove }
        puts @pastel.red("#{remove} was removed from activities.")
    end

    def view_itinerary
        array_check
        city_name = @@favorite_destinations.map do |location|
            location.city
        end
        it_view = city_name.concat(@@favorite_activities)
        prompt.select(@pastel.green("Select city"), it_view, symbols: { marker: "🌎"})
    end

    def add_itinerary
        @@favorite_destinations << @final_destination
        puts @pastel.bright_red("Added #{@final_destination.city} to itinerary")
        @@favorite_destinations = @@favorite_destinations.uniq
    end

    def remove_destination
        array_check
        city_name = @@favorite_destinations.map do |location|
            location.city
        end
        destination_to_remove = prompt.select(@pastel.green("Which destination would you like to remove?"), city_name, symbols: { marker: "🌎"})
        @@favorite_destinations = @@favorite_destinations.select do |location|
            location.city != destination_to_remove
        end
        puts @pastel.bright_red("Removed #{destination_to_remove} from itinerary.")
        itinerary_options
    end

    def array_check_activities
        if @@favorite_activities == []
            puts @pastel.red.on_blue.bold"You have no itinerary."
            itinerary_options
        end
    end

    def array_check
        if @@favorite_destinations == []
            puts @pastel.red.on_blue.bold"You have no itinerary."
            itinerary_options
        end
    end

    def clear
        system "clear"
    end
  
    def welcome
        puts @pastel.bold.yellow(@doom.write("COVID"))
        puts @pastel.bold.red(@starwars.write("Traveler"))
        puts @pastel.bright_blue('Welcome to Covid Traveler!!!')
        puts @pastel.bright_blue( "We're here to help you find your next destination during these unprecedented times.")
        system `say "Welcome to Covid Traveler!!!"`
    end

    def ask_scene
        system `say "What's your scene?"`
        @scene_selection = prompt.select(@pastel.green("What's your scene?"), %w(beach mountain desert country-side), symbols: { marker: "🏝"})
    end

    def ask_budget
        system `say "What's your budget"`
        @budget = prompt.slider(@pastel.green("What's your budget? 1 = staycation, 10 = YOLO"), max: 10, step: 1, symbols: { bullet: "💰"})
        if @budget == 0 || @budget == 1 || @budget == 2 || @budget == 3
            system `say "You should probably stay at home."`
        end
    end

    def select_by_budget
        @final_selection = Destination.where(budget: @budget
                        ).or(Destination.where(budget: @budget +1)
                        ).or(Destination.where(budget: @budget -1))
    end

    def select_by_scene
        @final_selection = Destination.where scene: @scene_selection
    end

    def select_by_budget_scene
        @final_selection = Destination.where(budget: @budget, scene: @scene_selection
                        ).or(Destination.where(budget: @budget +1, scene: @scene_selection)
                        ).or(Destination.where(budget: @budget -1, scene: @scene_selection))
    end

    def bsarraycheck 
        if @final_selection.length < 1
            puts @pastel.bright_red("Your selection has no results.")
            puts @pastel.green('Returning you to main menu.')
            main_menu
        end
    end

    def select_all_destinations
        @final_selection = Destination.all
    end

    def cityname_giver
        system `say "Please select your city"`
        @cityname = prompt.select(@pastel.green("Please select your city"), @final_selection.pluck(:city), symbols: { marker: "🌎"}, per_page: 10)
         
    end
    
    def find_destination_by_city_name
        @final_destination = Destination.find_by city: @cityname
    end

    def destination_activities
        puts @pastel.bright_yellow("These are the popular activities at #{@cityname}!!!")
        system `say "These are the popular activities at #{@cityname}!!!"`
        @final_destination.activities.pluck(:name).map do |name|
            puts @pastel.bright_cyan(name)
        end
    end

    def filter_by_budget
        clear
        ask_budget
        clear
        select_by_budget
        cityname_giver
        find_destination_by_city_name
        clear
        destination_activities
        main_exit
        
        
    end

    def filter_by_scene
        clear
        ask_scene
        clear
        select_by_scene
        cityname_giver
        find_destination_by_city_name
        clear
        destination_activities
        main_exit
    end

    def filter_by_budget_and_scene
        clear
        ask_scene
        clear
        ask_budget
        clear
        select_by_budget_scene
        bsarraycheck
        cityname_giver                
        find_destination_by_city_name
        clear        
        destination_activities
        main_exit
    end

    def browse_all_destinations
        clear
        select_all_destinations
        clear
        cityname_giver
        find_destination_by_city_name  
        clear
        destination_activities
        main_exit
    end
end