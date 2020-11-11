#activities will probably have to go first 

Destination.destroy_all


Destination.create city: 'Petra, Jordan', scene: 'desert', budget: 6
Destination.create city: 'Honalulu, USA', scene: 'beach', budget: 5
Destination.create city: 'New York, USA', scene: 'city', budget: 6
Destination.create city: 'Acapulco, Mexico', scene: 'beach', budget: 4
Destination.create city: 'Male, Maldives', scene: 'beach', budget: 10
Destination.create city: 'Denver, USA', scene: 'mountain', budget: 4
Destination.create city: 'Puerto Vallarta, Mexico', scene: 'beach', budget: 4
Destination.create city: 'Cairo, Egypt', scene: 'desert', budget: 2
Destination.create city: 'Dublin', scene: "city", budget: 4
Destination.create city: 'Dubrovnik, Croatia', scene: 'city', budget: 4
Destination.create city: 'Cappadocia, Turkey', scene: 'mountain', budget: 5
Destination.create city: 'Belgrade, Serbia', scene: 'mountain', budget: 3
Destination.create city: "Panama City, Panama", scene: 'city', budget: 3
Destination.create city: 'Punta Cana, Dominican Republic', scene: 'beach', budget: 2
Destination.create city: 'Rio De Janiera, Brazil', scene: 'city', budget: 2
Destination.create city: 'Dubai, UAE', scene: 'city', budget: 4


puts "has been seeded"