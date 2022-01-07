# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Review.destroy_all

15.time do |index|
  product = Product.create!({name: Faker:: :: })
  100.times do |index|
    REview.create!({name: Faker:: .name, product_id: product_id })