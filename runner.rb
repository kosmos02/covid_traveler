require_relative 'config/environment'

app = Cli.new

app.welcome

app.get_name

app.ask_scene
app.ask_budget

app.select_by_budget

# app.display_destinations_by_scene
# app.display_destinations_by_budget

#app.pick_destination_by_budget_scene


#puts "hello, world!"


binding.pry
0