# COVID Traveler destination app

This is an CLI application we built to help find open destinations for international travel and its associated activities during the COVID19 pandemic.

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