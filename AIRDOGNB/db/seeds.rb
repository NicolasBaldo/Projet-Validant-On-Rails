# Création des villes
cities = City.create([{ city_name: 'Paris' }, { city_name: 'Mexico' }])

# Création des dogsitters
dogsitters = Dogsitter.create([
  { name: 'Nicolas', city: cities.first },
  { name: 'Maxine', city: cities.second }
])

# Création des chiens
dogs = Dog.create([
  { name: 'Oscar', city: cities.first },
  { name: 'Aika', city: cities.second }
])

# Création des promenades
Stroll.create([
  { date: DateTime.now, dogsitter: dogsitters.first, dog: dogs.first },
  { date: DateTime.now, dogsitter: dogsitters.second, dog: dogs.second }
])
