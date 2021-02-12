# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Destroy any previous users in the db
User.destroy_all

# Generate 10 random cities with Faker
10.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

# Generate 10 random users with Faker and link them to a city
10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Hipster.sentence(word_count: 10), email: Faker::Internet.safe_email, age: Faker::Number.within(range: 18..90), city_id: Faker::Number.within(range:1..10))
end
