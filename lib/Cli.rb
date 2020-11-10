class Cli

    attr_reader :prompt, :scene_selection

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

    # @array_1_10 = [1,2,3,4,5,6,7,8,9,10]

    # def ask_budget
    #     @budget = prompt.select("On a scale of 1 to 10 how much are you willing to spend? 1 = staycation 10 = YOLO", @array_1_10, filter: true)
    # end

    def display_destinations
        display = Destination.where scene: @scene_selection 
        cities = display.pluck(:city)
        cities.each {|city| puts "#{city}"}
    end



end