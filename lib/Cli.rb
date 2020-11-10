class Cli

    def welcome
        puts "Welcome to Covid Traveler!!!"
    end

    def get_name
        puts "What is your name?"
        name = gets.chomp
        puts "welcome, #{name}!"
    end

    def ask_scene
        puts "What is your scene?"
        scene = gets.chomp

    end



end