# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.destroy_all
g1 = Genre.create(name: 'Dubstep')
g2 = Genre.create(name: 'House')
g3 = Genre.create(name: 'Electro')

User.destroy_all

u3 = User.create(name: 'Scotty', location: 'New York, NY', password: 'password', password_confirmation: 'password', about: "I can haz admin?", email: 'ScottyGammon@gmail.com', role: 'admin')

Song.destroy_all

