Catalog.destroy_all
Activities.destroy_all
Destination.destroy_all


petra = Destination.create city: 'Petra, Jordan', scene: 'desert', budget: 6
honolulu = Destination.create city: 'Honolulu, USA', scene: 'beach', budget: 5
newyork = Destination.create city: 'New York, USA', scene: 'city', budget: 6
acapulco = Destination.create city: 'Acapulco, Mexico', scene: 'beach', budget: 4
male = Destination.create city: 'Male, Maldives', scene: 'beach', budget: 10
denver = Destination.create city: 'Denver, USA', scene: 'mountain', budget: 4
puertovallarta =Destination.create city: 'Puerto Vallarta, Mexico', scene: 'beach', budget: 4
cairo = Destination.create city: 'Cairo, Egypt', scene: 'desert', budget: 2
dublin = Destination.create city: 'Dublin', scene: "city", budget: 4
dubrovnik = Destination.create city: 'Dubrovnik, Croatia', scene: 'city', budget: 4
cappadocia = Destination.create city: 'Cappadocia, Turkey', scene: 'mountain', budget: 5
belgrade = Destination.create city: 'Belgrade, Serbia', scene: 'mountain', budget: 3
panama = Destination.create city: "Panama City, Panama", scene: 'city', budget: 3
puntacana = Destination.create city: 'Punta Cana, Dominican Republic', scene: 'beach', budget: 2
rio = Destination.create city: 'Rio De Janiera, Brazil', scene: 'city', budget: 2
dubai = Destination.create city: 'Dubai, UAE', scene: 'city', budget: 4


skydiving = Activities.create name: 'Sky Diving', mood: 'Exciting' 
scubadiving = Activities.create name: 'Scuba Diving', mood: 'Exciting' 
rockclimbing = Activities.create name: 'Rock Climbing', mood: 'Exciting' 
sking = Activities.create name: 'Sking', mood: 'Exciting' 
concerts = Activities.create name: 'Concerts', mood: 'Exciting' 
clubs = Activities.create name: 'Clubs', mood: 'Exciting' 
themepark = Activities.create name: 'Theme Park', mood: 'Exciting' 
deepseafishing = Activities.create name: 'Deep Sea Fishing', mood: 'Exciting' 
ziplining = Activities.create name: 'Zip-lining', mood: 'Exciting' 
partyboat = Activities.create name: 'Party Boat', mood: 'Exciting'

birdwatching = Activities.create name: 'Bird Watching', mood: 'Relaxing' 
massage = Activities.create name: 'Massage', mood: 'Relaxing' 
mudbath = Activities.create name: 'Mud bath', mood: 'Relaxing' 
spas = Activities.create name: 'Other spa treatments', mood: 'Relaxing' 
winetasting = Activities.create name: 'Wine Tasting', mood: 'Relaxing' 
artexhibits = Activities.create name: 'Art Exhibits', mood: 'Relaxing' 
museums = Activities.create name: 'Musuems', mood: 'Relaxing' 
libraries = Activities.create name: 'Libraries', mood: 'Relaxing' 

finedining = Activities.create name: 'Fine Dining', mood: 'Romance' 
dancing = Activities.create name: 'Dancing', mood: 'Romance' 
helitour = Activities.create name: 'Helicopter Tour', mood: 'Romance' 
cooking = Activities.create name: 'Cooking Lessons', mood: 'Romance' 
arctour = Activities.create name: 'Archaeology Tour', mood: 'Romance' 
theatre = Activities.create name: 'Theatres', mood: 'Romance' 
horseriding = Activities.create name: 'Horseback Riding', mood: 'Romance' 

Catalog.create activities_id: partyboat.id, destinations_id: dubai.id
Catalog.create activities_id: Activities.find_by(name: 'Sky Diving').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id
Catalog.create activities_id: Activities.find_by(name: 'Scuba Diving').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id
Catalog.create activities_id: Activities.find_by(name: 'Helicopter Tour').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id
Catalog.create activities_id: Activities.find_by(name: 'Horeback Riding').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id

puts "has been seeded"