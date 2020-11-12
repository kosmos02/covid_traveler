class Cli

    attr_reader :prompt, :scene_selection, :budget

    def initialize 
        @prompt = TTY::Prompt.new
        @scene_selection = ''
        @budget = nil
        @final_destination = ''
        @cityname = ''
        @final_selection = nil
    end

    def welcome
        puts "Welcome to Covid Traveler!!!"
    end

    def get_name
        name = prompt.ask("What is your name?", default: ENV["USER"])
        puts "welcome, #{name}!"
    end

    def ask_scene
        @scene_selection = prompt.select("What's your scene?", %w(beach mountain desert country-side), symbols: { marker: "🌎"})
        #input (symbols: {marker: ">"}) later
    end

    def ask_budget
        @budget = prompt.slider("What's your budget? 1 = staycation, 10 = YOLO", max: 10, step: 1, symbols: { bullet: "💰"})
    end

    def display_by_name display
        cities = display.pluck(:city)
        cities.each {|city| puts "#{city}"}
    end

    def display_all_destinations
        display_by_name(Destination.all)
    end

    def select_by_budget
        @final_selection = Destination.where(budget: @budget).or(Destination.where(budget: @budget +1)).or(Destination.where(budget: @budget -1))
    end

    def select_by_scene
        @final_selection = Destination.where scene: @scene_selection
    end

    def display_destinations_by_budget
        display_by_name select_by_budget
    end

    def display_destinations_by_scene
        display_by_name select_by_scene
    end 

    def select_by_budget_scene
        @final_selection = Destination.where(budget: @budget, scene: @scene_selection).or(Destination.where(budget: @budget +1, scene: @scene_selection)).or(Destination.where(budget: @budget -1, scene: @scene_selection))
    end

    def cityname_giver
         @cityname = prompt.select("Please select your city", @final_selection.pluck(:city))
    end
    
    def find_destination_by_city_name
        @final_destination = Destination.find_by city: @cityname
    end

    def destination_activities
        prompt.select("These are your activities", @final_destination.activities.pluck(:name))
    end

    def main_exit
        choice = prompt.select('Would you like to exit or go back to the main menu?', %w(main_menu exit))
            if choice == "main_menu"
                main_menu
            else choice == "exit"
                puts "Thank you for using Covid Traveler to search your destination"
            end
    end

        
    def main_menu
        selection = prompt.select("What would you like to do?", {"filter by budget" => 'select by budget', "filter by scene" => 'select by scene', "Help me decide?!" => 'select by budget scene', "browse destination" => "browse all destinations", "exit" => "exit"})
            if selection == "select by budget"
                ask_budget
                select_by_budget
                cityname_giver
                find_destination_by_city_name
                destination_activities
#                display_destinations_by_budget
                main_exit
            elsif selection == "select by scene"
                ask_scene
                select_by_scene
                cityname_giver
                find_destination_by_city_name
                destination_activities
#                display_destinations_by_scene
                main_exit
            elsif selection == "select by budget scene"
                ask_scene
                ask_budget
                select_by_budget_scene
                cityname_giver                
                find_destination_by_city_name
                destination_activities
                main_exit
            elsif selection == "browse all destinations"
                display_all_destinations
                main_exit
            elsif selection == "exit"
                puts "Thank you for using Covid Traveler to search your destination"
            end
    end



end