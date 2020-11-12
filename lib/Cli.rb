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
    end

    def clear
        system "clear"
    end


    def start_app
        welcome()
        sleep(2)
        clear
        main_menu()
    end

    def welcome
        puts @pastel.yellow(@doom.write("COVID"))
        puts @pastel.red(@starwars.write("Traveler"))
        puts @pastel.bright_blue('Welcome to Covid Traveler!!!')
        puts @pastel.bright_blue( "We're here to help you find your next destination during these unprecedented times.")
        # system `say "Welcome to Covid Traveler!!!"`
    end

    def ask_scene
        # system `say "What's your scene?"`
        @scene_selection = prompt.select(@pastel.green("What's your scene?"), %w(beach mountain desert country-side), symbols: { marker: "🌎"})
    end

    def ask_budget
        # system `say "What's your budget"`
        @budget = prompt.slider(@pastel.green("What's your budget? 1 = staycation, 10 = YOLO"), max: 10, step: 1, symbols: { bullet: "💰"})
        if @budget == 1 || @budget == 2 || @budget == 3
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

    def select_all_destinations
        @final_selection = Destination.all
    end

    def cityname_giver
        # system `say "Please select your city"`
        @cityname = prompt.select(@pastel.green("Please select your city"), @final_selection.pluck(:city), symbols: { marker: "🌎"}, per_page: 10)
         
    end
    
    def find_destination_by_city_name
        @final_destination = Destination.find_by city: @cityname
    end

    def destination_activities
        puts @pastel.bright_yellow("These are the popular activities at #{@cityname}!!!")
        # system `say "These are the popular activities at #{@cityname}!!!"`
        @final_destination.activities.pluck(:name).map do |name|
            puts @pastel.bright_cyan(name)
        end
    end

    def main_exit
        # system `say "Would you like to exit or go back to the main menu?"`
        choice = prompt.select(@pastel.green('Would you like to exit or go back to the main menu?'), %w(main_menu exit), symbols: { marker: "🌎"} )
            if choice == "main_menu"
                main_menu
            else choice == "exit"
                puts "Thank you for using Covid Traveler to search your destination"
                system `say "Thank you for using Covid Traveler to search your destination."`
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


    def main_menu
        selection = prompt.select(@pastel.green("What would you like to do?"), 
            {"filter by budget" => 'select by budget',
             "filter by scene" => 'select by scene',
              "Help me decide?!" => 'select by budget scene',
               "browse destination" => "browse all destinations",
                "exit" => "exit"}, symbols: { marker: "🌎"})
            if selection == "select by budget"
                filter_by_budget
            elsif selection == "select by scene"
                filter_by_scene
            elsif selection == "select by budget scene"
                filter_by_budget_and_scene
            elsif selection == "browse all destinations"
                browse_all_destinations
            elsif selection == "exit"
                puts @pastel.cyan("Thank you for using Covid Traveler to search your destination")
                # system `say "Thank you for using Covid Traveler to search your destination."`
            end
    end
end