class Cli

    attr_reader :prompt, :scene_selection, :budget

    def initialize 
        @prompt = TTY::Prompt.new
        @scene_selection = ''
        @budget = nil
    end


    def welcome
        puts "Welcome to Covid Traveler!!!"
    end

    def get_name
        name = prompt.ask("What is your name?", default: ENV["USER"])
        puts "welcome, #{name}!"
    end

    def ask_scene
        @scene_selection = prompt.select("What's your scene?", %w(beach mountain metro wilderness))
        #input (symbols: {marker: ">"}) later
    end

    def ask_budget
        @budget = prompt.select("On a scale of 1 to 10 how much are you willing to spend? 1 = staycation, 10 = YOLO", %w(1 2 3 4 5 6 7 8 9 10) )
    end

    def display_by_name display
        cities = display.pluck(:city)
        cities.each {|city| puts "#{city}"}
        
    end

    def select_by_budget
        Destination.where budget: @budget
    end

    def select_by_scene
        Destination.where scene: @scene_selection
    end

    def display_destinations_by_budget
        display_by_name select_by_budget
    end


    def display_destinations_by_scene
        display_by_name select_by_scene
    end 

    def pick_destination_by_budget_scene
        final_selection = Destination.where budget: @budget, scene: @scene_selection
        display_by_name(final_selection)
    end



end