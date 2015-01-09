# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Emily', email: 'emily@emily.com', password: 'password', password_confirmation: 'password')
User.create(name: 'Mo', email: 'mo@email.com', password: 'password', password_confirmation: 'password')
User.create(name: 'Danny', email: 'danny@email.com', password: 'password', password_confirmation: 'password')
User.create(name: 'James', email: 'james@email.com', password: 'password', password_confirmation: 'password')


Joke.create(user_id: 1, body: 'this joke is dumb')
Joke.create(user_id: 2, body: 'testing joke')
Joke.create(user_id: 3, body: 'is this thing working')
Joke.create(user_id: 4, body: 'this joke is dumb')

Comment.create(joke_id: 1, user_id: 3, body: "i don't know, THIS joke is dumb")

puts 'yay'