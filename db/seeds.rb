# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Task.destroy_all
Task.create([
  {title: "Buy groceries"},
  {title: "Wash the car"},
  {title: "Pay the bills"},
  {title: "Go to the gym"},
  {title: "Walk the dog"},
  {title: "Do the laundry"}
])
