
require 'faker'

# Create Users
5.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.save
end
users = User.all

puts "#{User.count} users created."

# Crate wikis
20.times do
  wiki = Wiki.create!(
    user: users.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
  wiki.save
end
wiki = Wiki.all

puts "#{Wiki.count} wikis created."





