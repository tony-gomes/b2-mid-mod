# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mechanic.destroy_all
Park.destroy_all
Ride.destroy_all

# Mechanics
  mechanic_1 = Mechanic.create(name: "Sam Smith",
                                years_experience: 7)

  mechanic_2 = Mechanic.create(name: "Art Funk",
                                years_experience: 12)

  mechanic_3 = Mechanic.create(name: "Al Fixed",
                                years_experience: 17)

# Parks
  park_1 = Park.create(name: "Total Chaos",
                        admission_price: 25.00)

  park_2 = Park.create(name: "Total Chaos",
                        admission_price: 25.00)
