# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dino1 = Dinosaur.create!( { name: "Iguanodon", age: 3, image_url: "https://goo.gl/wB6q9q" } )
dino2 = Dinosaur.create!( { name: "Mosasaurus", age: 10, image_url: "https://goo.gl/aoZsYt" } )
dino3 = Dinosaur.create!( { name: "Hungarosaurus", age: 15, image_url: "https://goo.gl/EqRlgP" } )

def random
  @random_age = rand(0..100)
end

random
dino4 = Dinosaur.create!( { name: "Stegosaurus", age: "#{@random_age}", image_url: "https://wikikids.nl/Bestand:Stegosaurus.jpg" } )
random
dino5 = Dinosaur.create!( { name: "Triceratops", age: "#{@random_age}", image_url: "https://wikikids.nl/Bestand:Triceratops_BW.jpg" } )
random
dino6 = Dinosaur.create!( { name: "Torosaurus", age: "#{@random_age}", image_url: "https://wikikids.nl/Bestand:Torosaurus.jpg" } )
