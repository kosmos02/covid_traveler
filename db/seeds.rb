Catalog.destroy_all
Activities.destroy_all
Destination.destroy_all

Destination.create city: 'Petra, Jordan', scene: 'desert', budget: 6
#honolulu = Destination.create city: 'Honolulu, USA', scene: 'beach', budget: 5
#newyork = Destination.create city: 'New York, USA', scene: 'city', budget: 6
Destination.create city: 'Acapulco, Mexico', scene: 'beach', budget: 4
Destination.create city: 'Male, Maldives', scene: 'beach', budget: 10
Destination.create city: 'Denver, USA', scene: 'mountain', budget: 4
Destination.create city: 'Puerto Vallarta, Mexico', scene: 'beach', budget: 4
Destination.create city: 'Cairo, Egypt', scene: 'desert', budget: 2
Destination.create city: 'Galway, Ireland', scene: "country-side", budget: 4
Destination.create city: 'Dubrovnik, Croatia', scene: 'mountain', budget: 4
Destination.create city: 'Cappadocia, Turkey', scene: 'mountain', budget: 5
Destination.create city: 'Belgrade, Serbia', scene: 'mountain', budget: 3
Destination.create city: "Panama City, Panama", scene: 'city', budget: 3
Destination.create city: 'Punta Cana, Dominican Republic', scene: 'beach', budget: 2
Destination.create city: 'Rio De Janiera, Brazil', scene: 'city', budget: 2
Destination.create city: 'Dubai, UAE', scene: 'city', budget: 4


Activities.create name: 'Sky Diving', mood: 'Exciting' 
Activities.create name: 'Scuba Diving', mood: 'Exciting' 
Activities.create name: 'Rock Climbing', mood: 'Exciting' 
Activities.create name: 'Sking', mood: 'Exciting' 
Activities.create name: 'Concerts', mood: 'Exciting' 
Activities.create name: 'Night life', mood: 'Exciting' 
Activities.create name: 'Theme Park', mood: 'Exciting' 
Activities.create name: 'Deep Sea Fishing', mood: 'Exciting' 
Activities.create name: 'Zip-lining', mood: 'Exciting' 
Activities.create name: 'Party Boat', mood: 'Exciting'

Activities.create name: 'Bird Watching', mood: 'Relaxing' 
Activities.create name: 'Massage', mood: 'Relaxing' 
Activities.create name: 'Mud bath', mood: 'Relaxing' 
Activities.create name: 'Spas', mood: 'Relaxing' 
Activities.create name: 'Wine Tasting', mood: 'Relaxing' 
Activities.create name: 'Art Exhibits', mood: 'Relaxing' 
Activities.create name: 'Museums', mood: 'Relaxing' 
Activities.create name: 'Libraries', mood: 'Relaxing' 
Activities.create name: 'Laying at the beach', mood: 'Relaxing' 
Activities.create name: 'Shopping', mood: 'Relaxing' 
Activities.create name: 'World Heritage Site', mood: 'Relaxing' 
Activities.create name: 'Biking', mood: 'Relaxing' 


Activities.create name: 'Fine Dining', mood: 'Relaxing' 
Activities.create name: 'Dancing', mood: 'Exciting' 
Activities.create name: 'Helicopter Tour', mood: 'Exciting' 
Activities.create name: 'Cooking Lessons', mood: 'Relaxing' 
Activities.create name: 'Archaeology Tour', mood: 'Relaxing' 
Activities.create name: 'Theatres', mood: 'Relaxing' 
Activities.create name: 'Horseback Riding', mood: 'Exciting' 


Catalog.create activities_id: Activities.find_by(name: 'Sky Diving').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id
Catalog.create activities_id: Activities.find_by(name: 'Scuba Diving').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id
Catalog.create activities_id: Activities.find_by(name: 'Helicopter Tour').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id
Catalog.create activities_id: Activities.find_by(name: 'Horseback Riding').id, destinations_id: Destination.find_by(city: 'Dubai, UAE').id
Catalog.create activities_id: Activities.find_by(name: 'Archaeology Tour').id, destinations_id: Destination.find_by(city: 'Petra, Jordan').id
Catalog.create activities_id: Activities.find_by(name: 'Horseback Riding').id, destinations_id: Destination.find_by(city: 'Petra, Jordan').id
Catalog.create activities_id: Activities.find_by(name: 'World Heritage Site').id, destinations_id: Destination.find_by(city: 'Petra, Jordan').id
Catalog.create activities_id: Activities.find_by(name: 'Horseback Riding').id, destinations_id: Destination.find_by(city: 'Acapulco, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Night life').id, destinations_id: Destination.find_by(city: 'Acapulco, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Horseback Riding').id, destinations_id: Destination.find_by(city: 'Acapulco, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Massage').id, destinations_id: Destination.find_by(city: 'Acapulco, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Acapulco, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Fine Dining').id, destinations_id: Destination.find_by(city: 'Acapulco, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Fine Dining').id, destinations_id: Destination.find_by(city: 'Male, Maldives').id
Catalog.create activities_id: Activities.find_by(name: 'Scuba Diving').id, destinations_id: Destination.find_by(city: 'Male, Maldives').id
Catalog.create activities_id: Activities.find_by(name: 'Spas').id, destinations_id: Destination.find_by(city: 'Male, Maldives').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Male, Maldives').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Male, Maldives').id
Catalog.create activities_id: Activities.find_by(name: 'Rock Climbing').id, destinations_id: Destination.find_by(city: 'Denver, USA').id
Catalog.create activities_id: Activities.find_by(name: 'Sking').id, destinations_id: Destination.find_by(city: 'Denver, USA').id
Catalog.create activities_id: Activities.find_by(name: 'Museums').id, destinations_id: Destination.find_by(city: 'Denver, USA').id
Catalog.create activities_id: Activities.find_by(name: 'Art Exhibits').id, destinations_id: Destination.find_by(city: 'Denver, USA').id
Catalog.create activities_id: Activities.find_by(name: 'Wine Tasting').id, destinations_id: Destination.find_by(city: 'Denver, USA').id
Catalog.create activities_id: Activities.find_by(name: 'Spas').id, destinations_id: Destination.find_by(city: 'Puerto Vallarta, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Puerto Vallarta, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Night life').id, destinations_id: Destination.find_by(city: 'Puerto Vallarta, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Puerto Vallarta, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Archaeology Tour').id, destinations_id: Destination.find_by(city: 'Cairo, Egypt').id
Catalog.create activities_id: Activities.find_by(name: 'Museums').id, destinations_id: Destination.find_by(city: 'Cairo, Egypt').id
Catalog.create activities_id: Activities.find_by(name: 'World Heritage Site').id, destinations_id: Destination.find_by(city: 'Cairo, Egypt').id
Catalog.create activities_id: Activities.find_by(name: 'Archaeology Tour').id, destinations_id: Destination.find_by(city: 'Cairo, Egypt').id
Catalog.create activities_id: Activities.find_by(name: 'World Heritage Site').id, destinations_id: Destination.find_by(city: 'Galway, Ireland').id
Catalog.create activities_id: Activities.find_by(name: 'Wine Tasting').id, destinations_id: Destination.find_by(city: 'Galway, Ireland').id
Catalog.create activities_id: Activities.find_by(name: 'Rock Climbing').id, destinations_id: Destination.find_by(city: 'Dubrovnik, Croatia').id
Catalog.create activities_id: Activities.find_by(name: 'Museums').id, destinations_id: Destination.find_by(city: 'Dubrovnik, Croatia').id
Catalog.create activities_id: Activities.find_by(name: 'Fine Dining').id, destinations_id: Destination.find_by(city: 'Dubrovnik, Croatia').id
Catalog.create activities_id: Activities.find_by(name: 'Shopping').id, destinations_id: Destination.find_by(city: 'Dubrovnik, Croatia').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Dubrovnik, Croatia').id
Catalog.create activities_id: Activities.find_by(name: 'Rock Climbing').id, destinations_id: Destination.find_by(city: 'Cappadocia, Turkey').id
Catalog.create activities_id: Activities.find_by(name: 'Mud bath').id, destinations_id: Destination.find_by(city: 'Cappadocia, Turkey').id
Catalog.create activities_id: Activities.find_by(name: 'World Heritage Site').id, destinations_id: Destination.find_by(city: 'Cappadocia, Turkey').id
Catalog.create activities_id: Activities.find_by(name: 'Wine Tasting').id, destinations_id: Destination.find_by(city: 'Cappadocia, Turkey').id
Catalog.create activities_id: Activities.find_by(name: 'Sking').id, destinations_id: Destination.find_by(city: 'Belgrade, Serbia').id
Catalog.create activities_id: Activities.find_by(name: 'Helicopter Tour').id, destinations_id: Destination.find_by(city: 'Belgrade, Serbia').id
Catalog.create activities_id: Activities.find_by(name: 'Fine Dining').id, destinations_id: Destination.find_by(city: 'Belgrade, Serbia').id
Catalog.create activities_id: Activities.find_by(name: 'Museums').id, destinations_id: Destination.find_by(city: 'Belgrade, Serbia').id
Catalog.create activities_id: Activities.find_by(name: 'Biking').id, destinations_id: Destination.find_by(city: 'Belgrade, Serbia').id
Catalog.create activities_id: Activities.find_by(name: 'Museums').id, destinations_id: Destination.find_by(city: 'Panama City, Panama').id
Catalog.create activities_id: Activities.find_by(name: 'World Heritage Site').id, destinations_id: Destination.find_by(city: 'Panama City, Panama').id
Catalog.create activities_id: Activities.find_by(name: 'Night life').id, destinations_id: Destination.find_by(city: 'Panama City, Panama').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Punta Cana, Dominican Republic').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Punta Cana, Dominican Republic').id
Catalog.create activities_id: Activities.find_by(name: 'Scuba Diving').id, destinations_id: Destination.find_by(city: 'Punta Cana, Dominican Republic').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Rio De Janiera, Brazil').id
Catalog.create activities_id: Activities.find_by(name: 'Art Exhibits').id, destinations_id: Destination.find_by(city: 'Rio De Janiera, Brazil').id
Catalog.create activities_id: Activities.find_by(name: 'World Heritage Site').id, destinations_id: Destination.find_by(city: 'Rio De Janiera, Brazil').id






puts "has been seeded"