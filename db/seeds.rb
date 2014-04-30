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
u1 = User.create(name:'Nicky Romero', location:'Amsterdam, NL', password: 'password', password_confirmation: 'password', about: 'Dutch DJ and house music composer/producer. In 2012, Romero achieved popularity with the recording "Toulouse," which became a mainstay on the Beatport Top Ten for a significant period of time.', email: 'Nicky@NickyRomero.com', role: 0)
u2 = User.create(name:'Showtek', location:'Eindhoven, NL', password: 'password', password_confirmation: 'password', about: 'Showtek is a Dutch electronic dance music act consisting of two brothers, Sjoerd and Wouter Janssen, who began producing music in 2001.', email: 'Showtek@Skink.com', role: 0 )
u3 = User.create(name: 'Hardwell', location: 'Amsterdam, NL', password: 'password', password_confirmation: 'password', about: "Dutch progressive and electro house DJ and music producer. He is the world's number one DJ based on DJ Magazine's annual Top 100 DJs poll and is widely known for his live sets at major music festivals such as Tomorrowland and Ultra.", email: 'me@Hardwell.com', role: 0)
u3 = User.create(name: 'Scotty', location: 'New York, NY', password: 'password', password_confirmation: 'password', about: "I can haz admin?", email: 'ScottyGammon@gmail.com', role: 1)

Song.destroy_all
m1 = Song.new(name: 'Spaceman', description: "Spaceman saw it's release in February and landed on the second spot at Beatport and has been setting dance floors on fire for months.", genre_id: 'electro', user_id: u3.id )
m1.save(validate: false)

