# COVID traveler destination app
This is a Cli application we built to find open destinations
for international travel and its associated activities during the COVID19 pandemic.

## _Technologies used_
This was primarily coded in Ruby. Notable Gems include:
    * TTY-Toolkit
    * ActiveRecord v6.0

## How to Use

### Startup

After forking and cloning this repo, open up your terminal. Make sure you're in this project's working directory and type into your terminal
```
$bundle install

$rake db:migrate

$rake db:seed

$ruby runner.rb 
```

that should initialize the file.

### Main Menu description

After being welcomed, the CLI will ask how you would like to find your destination. At the end of each menu option you will be able to view your destination and the activities found there.

### Menu Choices

You can filter the destinations by

1. Environment (scene)
2. Budget (from a scale of 1-10)
3. Environment and Budget

You may also browse all the destinations available for travel and see their activities.

** We've now added a new feature Itineerary which you can access from the main menu. **

### Itinerary Menu

Once you've selected a destination you'll have the option to add it to your itinerary.

In the itinerary there are several options 

1. Remove destination (From your itinerary)
2. View itinerary
3. Add activity
4. Remove activity
5. Main Menu

## Lessons from this project
    Learned the value of separating concerns.
    Learned more about how to structure object relationships.

## Fun code snippit
    This line of code was a fun way to select objects out of a target table by creating a 
    range around a given value.
```
    def select_by_budget_scene
        @final_selection = Destination.where(budget: @budget, scene: @scene_selection
                        ).or(Destination.where(budget: @budget +1, scene: @scene_selection)
                        ).or(Destination.where(budget: @budget -1, scene: @scene_selection))
    end
```

## Demo Video
    This is where you can find the demo video. [Click here(https://youtu.be/6FClE8KDXso)](http://youtu.be/6FClE8KDXso)
### Contributers 

@kosmos02 and @Allen70 contributed to this project.
