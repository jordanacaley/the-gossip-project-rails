# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Destroy any previous users or cities in the db
# User.destroy_all
# City.destroy_all
# Tag.destroy_all

# Generate 10 random cities with Faker
# 10.times do
#   city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
# end

# Generate 10 random users with Faker and link them to a city
# 10.times do
#   user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Hipster.sentence(word_count: 10), email: Faker::Internet.safe_email, age: Faker::Number.within(range: 18..90), city_id: Faker::Number.within(range:91...100))
# end

# Generate 20 random gossips and link them to their authors
# 20.times do
#   gossip = Gossip.create!(title: Faker::Hipster.sentence(word_count: 3), content: Faker::Hipster.sentence(word_count: 10), user_id: Faker::Number.within(range:1..10))
# end

# Generate 10 tags with Faker
# 10.times do 
#   tag = Tag.create!(title: Faker::Hipster.word)
# end

# Give each gossip a random tag
# Gossip.all.each do |gossip|
#   gossip_tag = JoinTableGossipTag.create!(gossip_id: gossip.id, tag_id: Faker::Number.within(range:21..30))
# end

# Generate 5 private messages and give each one a sender and recipient
5.times do 
  pm = PrivateMessage.create!(content: Faker::Hipster.sentence(word_count: 10), recipient_id: Faker::Number.within(range:1..10), sender_id: Faker::Number.within(range:1..10))
end