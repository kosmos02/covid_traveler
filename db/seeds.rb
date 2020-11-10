#activities will probably have to go first 

Destination.destroy_all


Destination.create city: 'Muai', scene: 'beach'
Destination.create city: 'Honalulu', scene: 'beach'
Destination.create city: 'New York', scene: 'city'
Destination.create city: 'Denver', scene: 'mountain'


puts "has been seeded"