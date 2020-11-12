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

    def welcome
        puts @pastel.yellow(@doom.write("COVID"))
        puts @pastel.red(@starwars.write("Traveler"))
        puts @pastel.bright_blue('Welcome to Covid Traveler!!!')
        puts @pastel.bright_blue("We're here to help you find your next destination during these unprecedented times.")
    end

    def get_name
        name = prompt.ask("What is your name?", default: ENV["USER"])
        puts "welcome, #{name}!"
    end

    def ask_scene
        @scene_selection = prompt.select(@pastel.green("What's your scene?"), %w(beach mountain desert country-side), symbols: { marker: "🌎"})
    end

    def ask_budget
        @budget = prompt.slider(@pastel.green("What's your budget? 1 = staycation, 10 = YOLO"), max: 10, step: 1, symbols: { bullet: "💰"})
    end

    def select_by_budget
        @final_selection = Destination.where(budget: @budget).or(Destination.where(budget: @budget +1)).or(Destination.where(budget: @budget -1))
    end

    def select_by_scene
        @final_selection = Destination.where scene: @scene_selection
    end

    def select_by_budget_scene
        @final_selection = Destination.where(budget: @budget, scene: @scene_selection).or(Destination.where(budget: @budget +1, scene: @scene_selection)).or(Destination.where(budget: @budget -1, scene: @scene_selection))
    end

    def select_all_destinations
        @final_selection = Destination.all
    end

    def cityname_giver
         @cityname = prompt.select(@pastel.green("Please select your city"), @final_selection.pluck(:city), symbols: { marker: "🌎"})
    end
    
    def find_destination_by_city_name
        @final_destination = Destination.find_by city: @cityname
    end

    def destination_activities
        puts @pastel.bright_yellow("These are the popular activities at #{@cityname}!!!")
        @final_destination.activities.pluck(:name).map do |name|
            puts @pastel.bright_cyan(name)
        end
    end

    def main_exit
        choice = prompt.select(@pastel.green('Would you like to exit or go back to the main menu?'), %w(main_menu exit))
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
                main_exit
            elsif selection == "select by scene"
                ask_scene
                select_by_scene
                cityname_giver
                find_destination_by_city_name
                destination_activities
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
                select_all_destinations
                cityname_giver  
                destination_activities
                main_exit
            elsif selection == "exit"
                puts "Thank you for using Covid Traveler to search your destination"
            end
    end
end