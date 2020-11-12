Catalog.destroy_all
Activities.destroy_all
Destination.destroy_all

Destination.create city: 'Petra, Jordan', scene: 'desert', budget: 6

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
Destination.create city: "St.John's, Antigua", scene: 'city', budget: 4
Destination.create city: 'Dubai, UAE', scene: 'city', budget: 4
Destination.create city: 'Oranjestad, Aruba', scene: 'beach', budget: 7
Destination.create city: 'Nassau, Bahamas', scene: 'beach', budget: 5
Destination.create city: 'Manama, Bahrain', scene: 'city', budget: 4
Destination.create city: 'Bridgetown, Barbados', scene: 'beach', budget: 5
Destination.create city: 'Belize City, Belize', scene: 'beach', budget: 4
Destination.create city: 'Hamilton, Bermuda', scene: 'beach', budget: 6
Destination.create city: 'Sarajevo, Bosnia', scene: 'mountain', budget: 3
Destination.create city: 'Cartagena, Colombia', scene: 'beach', budget: 4
Destination.create city: 'San Jose, Costa Rica', scene: 'mountain', budget: 3
Destination.create city: 'Kinshasa, DR Congo', scene: 'country-side', budget: 2
Destination.create city: 'Quito, Ecuador', scene: 'mountain', budget: 3
Destination.create city: 'Tahiti, French Polynesia', scene: 'beach', budget: 10
Destination.create city: 'Guatemala City, Guatemala', scene: 'mountain', budget: 3
Destination.create city: 'Kingston, Jaimaica', scene: 'beach', budget: 5
Destination.create city: 'Nairobi, Kenya', scene: 'country-side', budget: 3
Destination.create city: 'Cancun, Mexico', scene: 'beach', budget: 5
Destination.create city: 'Marrakesh, Morocco', scene: 'desert', budget: 5
Destination.create city: 'Kumanovo, Macedonia', scene: 'mountain', budget: 3
Destination.create city: 'Kigali City, Rwanda', scene: 'country-side', budget: 4
Destination.create city: 'Castries, St.Lucia', scene: 'beach', budget: 3
Destination.create city: 'Victoria, Seychelles', scene: 'beach', budget: 9
Destination.create city: 'Dodoma, Tanzania', scene: 'country-side', budget: 2
Destination.create city: 'Tashkent, Uzbekistan', scene: 'city', budget: 1



Activities.create name: 'Sky Diving', mood: 'Adventure' 
Activities.create name: 'Scuba Diving', mood: 'Adventure' 
Activities.create name: 'Rock Climbing', mood: 'Adventure' 
Activities.create name: 'Skiing', mood: 'Adventure' 
Activities.create name: 'Concerts', mood: 'Adventure' 
Activities.create name: 'Night life', mood: 'Adventure' 
Activities.create name: 'Theme Park', mood: 'Adventure' 
Activities.create name: 'Deep Sea Fishing', mood: 'Adventure' 
Activities.create name: 'Zip-lining', mood: 'Adventure' 
Activities.create name: 'Party Boat', mood: 'Adventure'

Activities.create name: 'Bird Watching', mood: 'Chill' 
Activities.create name: 'Massage', mood: 'Chill' 
Activities.create name: 'Mud bath', mood: 'Chill' 
Activities.create name: 'Spas', mood: 'Chill' 
Activities.create name: 'Wine Tasting', mood: 'Chill' 
Activities.create name: 'Art Exhibits', mood: 'Chill' 
Activities.create name: 'Museums', mood: 'Chill' 
Activities.create name: 'Libraries', mood: 'Chill' 
Activities.create name: 'Laying at the beach', mood: 'Chill' 
Activities.create name: 'Shopping', mood: 'Chill' 
Activities.create name: 'World Heritage Site', mood: 'Chill' 
Activities.create name: 'Biking', mood: 'Chill' 


Activities.create name: 'Fine Dining', mood: 'Chill' 
Activities.create name: 'Dancing', mood: 'Adventure' 
Activities.create name: 'Helicopter Tour', mood: 'Adventure' 
Activities.create name: 'Cooking Lessons', mood: 'Chill' 
Activities.create name: 'Archaeology Tour', mood: 'Chill' 
Activities.create name: 'Theatres', mood: 'Chill' 
Activities.create name: 'Horseback Riding', mood: 'Adventure' 
Activities.create name: 'Safari', mood: 'Adventure' 
Activities.create name: 'Shopping', mood: 'Relaxing' 


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
Catalog.create activities_id: Activities.find_by(name: 'Skiing').id, destinations_id: Destination.find_by(city: 'Denver, USA').id
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
Catalog.create activities_id: Activities.find_by(name: 'Skiing').id, destinations_id: Destination.find_by(city: 'Belgrade, Serbia').id
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
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: "St.John's, Antigua").id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Oranjestad, Aruba').id
Catalog.create activities_id: Activities.find_by(name: 'Horseback Riding').id, destinations_id: Destination.find_by(city: 'Oranjestad, Aruba').id
Catalog.create activities_id: Activities.find_by(name: 'Scuba Diving').id, destinations_id: Destination.find_by(city: 'Oranjestad, Aruba').id
Catalog.create activities_id: Activities.find_by(name: 'Scuba Diving').id, destinations_id: Destination.find_by(city: 'Nassau, Bahamas').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Nassau, Bahamas').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Nassau, Bahamas').id
Catalog.create activities_id: Activities.find_by(name: 'Fine Dining').id, destinations_id: Destination.find_by(city: 'Manama, Bahrain').id
Catalog.create activities_id: Activities.find_by(name: 'Shopping').id, destinations_id: Destination.find_by(city: 'Manama, Bahrain').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Bridgetown, Barbados').id
Catalog.create activities_id: Activities.find_by(name: 'Deep Sea Fishing').id, destinations_id: Destination.find_by(city: 'Bridgetown, Barbados').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Bridgetown, Barbados').id
Catalog.create activities_id: Activities.find_by(name: 'Scuba Diving').id, destinations_id: Destination.find_by(city: 'Bridgetown, Barbados').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Belize City, Belize').id
Catalog.create activities_id: Activities.find_by(name: 'Shopping').id, destinations_id: Destination.find_by(city: 'Belize City, Belize').id
Catalog.create activities_id: Activities.find_by(name: 'Zip-lining').id, destinations_id: Destination.find_by(city: 'Belize City, Belize').id
Catalog.create activities_id: Activities.find_by(name: 'Spas').id, destinations_id: Destination.find_by(city: 'Belize City, Belize').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Hamilton, Bermuda').id
Catalog.create activities_id: Activities.find_by(name: 'Deep Sea Fishing').id, destinations_id: Destination.find_by(city: 'Hamilton, Bermuda').id
Catalog.create activities_id: Activities.find_by(name: 'Biking').id, destinations_id: Destination.find_by(city: 'Sarajevo, Bosnia').id
Catalog.create activities_id: Activities.find_by(name: 'Spas').id, destinations_id: Destination.find_by(city: 'Sarajevo, Bosnia').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Cartagena, Colombia').id
Catalog.create activities_id: Activities.find_by(name: 'Shopping').id, destinations_id: Destination.find_by(city: 'Cartagena, Colombia').id
Catalog.create activities_id: Activities.find_by(name: 'Bird Watching').id, destinations_id: Destination.find_by(city: 'Cartagena, Colombia').id
Catalog.create activities_id: Activities.find_by(name: 'Night life').id, destinations_id: Destination.find_by(city: 'Cartagena, Colombia').id
Catalog.create activities_id: Activities.find_by(name: 'Zip-lining').id, destinations_id: Destination.find_by(city: 'San Jose, Costa Rica').id
Catalog.create activities_id: Activities.find_by(name: 'Cooking Lessons').id, destinations_id: Destination.find_by(city: 'San Jose, Costa Rica').id
Catalog.create activities_id: Activities.find_by(name: 'Horseback Riding').id, destinations_id: Destination.find_by(city: 'San Jose, Costa Rica').id
Catalog.create activities_id: Activities.find_by(name: 'Bird Watching').id, destinations_id: Destination.find_by(city: 'San Jose, Costa Rica').id
Catalog.create activities_id: Activities.find_by(name: 'Safari').id, destinations_id: Destination.find_by(city: 'Kinshasa, DR Congo').id
Catalog.create activities_id: Activities.find_by(name: 'Shopping').id, destinations_id: Destination.find_by(city: 'Kinshasa, DR Congo').id
Catalog.create activities_id: Activities.find_by(name: 'Zip-lining').id, destinations_id: Destination.find_by(city: 'Quito, Ecuador').id
Catalog.create activities_id: Activities.find_by(name: 'Rock Climbing').id, destinations_id: Destination.find_by(city: 'Quito, Ecuador').id
Catalog.create activities_id: Activities.find_by(name: 'Mud bath').id, destinations_id: Destination.find_by(city: 'Quito, Ecuador').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Tahiti, French Polynesia').id
Catalog.create activities_id: Activities.find_by(name: 'Spas').id, destinations_id: Destination.find_by(city: 'Tahiti, French Polynesia').id
Catalog.create activities_id: Activities.find_by(name: 'Deep Sea Fishing').id, destinations_id: Destination.find_by(city: 'Tahiti, French Polynesia').id
Catalog.create activities_id: Activities.find_by(name: 'Archaeology Tour').id, destinations_id: Destination.find_by(city: 'Guatemala City, Guatemala').id
Catalog.create activities_id: Activities.find_by(name: 'World Heritage Site').id, destinations_id: Destination.find_by(city: 'Guatemala City, Guatemala').id
Catalog.create activities_id: Activities.find_by(name: 'Cooking Lessons').id, destinations_id: Destination.find_by(city: 'Guatemala City, Guatemala').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Kingston, Jaimaica').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Kingston, Jaimaica').id
Catalog.create activities_id: Activities.find_by(name: 'Safari').id, destinations_id: Destination.find_by(city: 'Nairobi, Kenya').id
Catalog.create activities_id: Activities.find_by(name: 'Cooking Lessons').id, destinations_id: Destination.find_by(city: 'Nairobi, Kenya').id
Catalog.create activities_id: Activities.find_by(name: 'Fine Dining').id, destinations_id: Destination.find_by(city: 'Nairobi, Kenya').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Cancun, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'World Heritage Site').id, destinations_id: Destination.find_by(city: 'Cancun, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Spas').id, destinations_id: Destination.find_by(city: 'Cancun, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Massage').id, destinations_id: Destination.find_by(city: 'Cancun, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Zip-lining').id, destinations_id: Destination.find_by(city: 'Cancun, Mexico').id
Catalog.create activities_id: Activities.find_by(name: 'Shopping').id, destinations_id: Destination.find_by(city: 'Marrakesh, Morocco').id
Catalog.create activities_id: Activities.find_by(name: 'Art Exhibits').id, destinations_id: Destination.find_by(city: 'Marrakesh, Morocco').id
Catalog.create activities_id: Activities.find_by(name: 'Cooking Lessons').id, destinations_id: Destination.find_by(city: 'Marrakesh, Morocco').id
Catalog.create activities_id: Activities.find_by(name: 'Biking').id, destinations_id: Destination.find_by(city: 'Kumanovo, Macedonia').id
Catalog.create activities_id: Activities.find_by(name: 'Spas').id, destinations_id: Destination.find_by(city: 'Kumanovo, Macedonia').id
Catalog.create activities_id: Activities.find_by(name: 'World Heritage Site').id, destinations_id: Destination.find_by(city: 'Kigali City, Rwanda').id
Catalog.create activities_id: Activities.find_by(name: 'Safari').id, destinations_id: Destination.find_by(city: 'Kigali City, Rwanda').id
Catalog.create activities_id: Activities.find_by(name: 'Bird Watching').id, destinations_id: Destination.find_by(city: 'Kigali City, Rwanda').id
Catalog.create activities_id: Activities.find_by(name: 'Party Boat').id, destinations_id: Destination.find_by(city: 'Castries, St.Lucia').id
Catalog.create activities_id: Activities.find_by(name: 'Rock Climbing').id, destinations_id: Destination.find_by(city: 'Castries, St.Lucia').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Castries, St.Lucia').id
Catalog.create activities_id: Activities.find_by(name: 'Laying at the beach').id, destinations_id: Destination.find_by(city: 'Victoria, Seychelles').id
Catalog.create activities_id: Activities.find_by(name: 'Spas').id, destinations_id: Destination.find_by(city: 'Victoria, Seychelles').id
Catalog.create activities_id: Activities.find_by(name: 'Fine Dining').id, destinations_id: Destination.find_by(city: 'Victoria, Seychelles').id
Catalog.create activities_id: Activities.find_by(name: 'Helicopter Tour').id, destinations_id: Destination.find_by(city: 'Victoria, Seychelles').id
Catalog.create activities_id: Activities.find_by(name: 'Safari').id, destinations_id: Destination.find_by(city: 'Dodoma, Tanzania').id
Catalog.create activities_id: Activities.find_by(name: 'Bird Watching').id, destinations_id: Destination.find_by(city: 'Dodoma, Tanzania').id
Catalog.create activities_id: Activities.find_by(name: 'Horseback Riding').id, destinations_id: Destination.find_by(city: 'Tashkent, Uzbekistan').id







puts "has been seeded"