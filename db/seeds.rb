# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Planting"

Movie.create(
  movie_title: "Star Wars",
  runtime: 121,
  theater_number: 1,
  time_slot: DateTime.new(2022, 4, 1, 10, 30),
  tickets_remaining: 56,
)
Movie.create(
  movie_title: "Pirates of the Caribbean: The Curse of the Black Pearl",
  runtime: 143,
  theater_number: 3,
  time_slot: DateTime.new(2022, 4, 1, 12, 30),
  tickets_remaining: 43,

)
Movie.create(
  movie_title: "The Lord of the Rings: The Fellowship of the Ring",
  runtime: 179,
  theater_number: 2,
  time_slot: DateTime.new(2022, 4, 2, 10, 30),
  tickets_remaining: 1,
)

puts "Seeds planted"
