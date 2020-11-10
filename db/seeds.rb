# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airline = Airline.create!(name: "American Airlines")
flight_1 = airline.flights.create!(number: "123", date: "10/10/2020", departure_city: "Denver", arrival_city: "Las Vegas")
joe = flight_1.passengers.create!(name: "Joe Bob", age: 33)
